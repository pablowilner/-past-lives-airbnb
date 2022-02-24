class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  # belongs_to :character, through: :bookings
end
