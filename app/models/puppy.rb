class Puppy < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_puppy_fields,
    against: %w[name address breed description],
    using: {
      tsearch: { prefix: true }
    }
end
