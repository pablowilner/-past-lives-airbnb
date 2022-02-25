class Character < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :name, presence: true
  validates :profession, presence: true, inclusion: { in: %w(royalty sports celebrity business scientist heroes artists)}
  validates :historical_period, presence: true, inclusion: { in: ["Prehistory","Ancient Ages", "Middle Ages", "Modern Era", "Contemporary Era"] }
  # validates :address, presence: true
  validates :price, presence: true
  validates :photo, presence: true

  include PgSearch::Model
  pg_search_scope :new_search,
    against: [ :title, :description, :profession, :historical_period ],
    using: {
      tsearch: { prefix: true }
    }
end
