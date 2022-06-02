class DashboardController < ApplicationController
  def dashboard
    # current bookings
    @bookings = current_user.bookings
    # owner's puppies
    @owners_puppies = Puppy.where(user: current_user)
  end
end
