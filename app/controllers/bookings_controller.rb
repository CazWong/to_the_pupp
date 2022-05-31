class BookingsController < ApplicationController
  before_action :get_puppy, only: [:new, :create, :update, :destroy]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.puppy = @puppy
    if @booking.save
      redirect_to @puppy
    else
      render :new
    end
  end

  def edit
    # TODO
  end

  def update
    @booking.update(bookings_params)
    redirect_to @puppy
    # TODO
  end

  def destroy
    @booking.destroy
    redirect_to @puppy
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
