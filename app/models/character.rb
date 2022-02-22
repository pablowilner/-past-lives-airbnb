class Character < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :name, presence: true
  validates :profession, presence: true, inclusion: { in: %w(royalty sports celebrity business scientist heroes artists)}
  validates :historical_period, presence: true, inclusion: { in: %w(middle_age 20th_century ancient_history )}
  # validates :location, presence: true
  validates :price, presence: true

end
