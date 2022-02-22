class Character < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :name, presence: true
  validates :profession, presence: true, inclusion: { in: %w(royalty sports celebrity business scientist heroes artists)}
  validates :historical_period, presence: true, inclusion: { in: %w( Ancient _Ages_(Up_to_500) Middle_Ages_(500_1500) Modern_Era_(1500 _1900) Contemporary_History_(1900_Present) )}
  # validates :location, presence: true
  validates :price, presence: true
  validates :photo, presence: true

end
