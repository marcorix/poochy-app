class Dog < ApplicationRecord
  belongs_to :user
  validates :name, :size, :age, :description, :gender, :address, presence: true
  has_many :bookings
end
