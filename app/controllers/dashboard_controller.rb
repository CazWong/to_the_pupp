class DashboardController < ApplicationController
  def my_bookings
    # user's bookings
    @bookings = current_user.bookings
    # user's bookings that are still pending
    @pending_bookings = @bookings.pending
    # user's bookings that have been confirmed by another user
    @approved_bookings = @bookings.approved
    # puppies that have been added by the user
  end

  def my_puppies
    @owners_puppies = current_user.puppies
    @my_puppy_bookings = Booking.where(puppy: @owners_puppies, status: "pending")
  end

  private

  # actions in bookings controller
  def change_status_to_approved(booking)
    booking.update(status: :approved)
  end

  def change_status_to_decline(booking)
    booking.update(status: :decline)
  end
end
