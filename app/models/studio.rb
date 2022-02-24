class Studio < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :reviews

  include PgSearch::Model
  pg_search_scope :search_by_title_and_address,
    against: [ :title, :adress ],
    using: {
      tsearch: { prefix: true }
    }
end
