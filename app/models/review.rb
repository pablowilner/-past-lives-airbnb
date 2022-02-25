class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_one :character, through: :booking
end
