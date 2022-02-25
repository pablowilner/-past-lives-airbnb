class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_one :character, through: :booking
  validates :content, presence: true
  validates :rating, presence: true
end
