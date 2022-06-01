class BookingsController < ApplicationController
  before_action :get_puppy, only: [:new, :create, :update, :destroy]
  def new
    @booking = Booking.new
    @booking.puppy_id = @puppy.id
    @booking.user_id = current_user.id
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.puppy = @puppy
    @booking.user_id = current_user.id
    if @booking.save
      # TODO: redirect to dashboard
      # @booking.status = 'peending'
      redirect_to puppy_path(@puppy), notice: "Booking pending, waiting for response from owner"
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
    params.require(:booking).permit(:user_id, :puppy_id, :start_date, :end_date, :comments, :status)
  end
end
