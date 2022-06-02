class BookingsController < ApplicationController
  before_action :get_puppy, only: [:new, :create, :update, :destroy]
  def new
    @booking = Booking.new
    @booking.puppy_id = @puppy.id
    @booking.user_id = current_user.id
  end

  def create
    # gets the 2 dates
    dates = params[:booking]["start_date"].match(/(?<start>\d+{4}-\d+{2}-\d+{2}).*(?<end>\d+{4}-\d+{2}-\d+{2})/)
    @booking = Booking.new(bookings_params)
    @booking.puppy = @puppy
    @booking.end_date = Date.parse(dates[2])
    @booking.start_date = Date.parse(dates[1])
    # calculates the total cost per night
    total_nights = @booking.end_date.mjd - @booking.start_date.mjd
    @booking.total_cost_per_night = total_nights * @puppy.cost_per_night
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to dashboard_path, notice: "Booking pending, waiting for response from owner"
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    if @booking.update(bookings_params)
      redirect_to puppy_path(@puppy), notice: "Booking Updated"
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to puppies_path
  end

  private

  def get_puppy
    @puppy = Puppy.find(params[:puppy_id])
    authorize @puppy
  end

  def bookings_params
    params.require(:booking).permit(:user_id, :puppy_id, :start_date, :total_cost_per_night, :end_date, :comments, :status)
  end
end
