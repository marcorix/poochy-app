class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :size, :age, :description, :gender, :address, presence: true
end
