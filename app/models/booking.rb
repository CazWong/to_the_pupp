class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :puppy

  enum status: {
    pending: 0,
    approved: 1,
    decline: 2
  }
end
