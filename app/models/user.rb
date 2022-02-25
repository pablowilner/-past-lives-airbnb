class User < ApplicationRecord
  has_many :characters
  has_many :bookings
  has_one_attached :photo
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :username, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
