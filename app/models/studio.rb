class Studio < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
end
