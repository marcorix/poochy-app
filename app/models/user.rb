class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :bookings
  has_many :dogs
  has_many :reviews, dependent: :destroy
  has_many :chatrooms
  has_many :favorites
  has_many :messages, dependent: :destroy
end
