class Character < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :name, presence: true
  validates :profession, presence: true, inclusion: { in: %w(royalty sports celebrity business scientist heroes artists)}
  validates :historical_period, presence: true, inclusion: { in: ["Ancient Ages (Up to 500)", "Middle Ages (500 1500)", "Modern Era (1500 1900)", "Contemporary History (1900 Present)"] }
  # validates :location, presence: true
  validates :price, presence: true
  validates :photo, presence: true

end
