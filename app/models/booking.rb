class Booking < ApplicationRecord
  belongs_to :studio
  belongs_to :user
end
