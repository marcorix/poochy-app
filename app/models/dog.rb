class Dog < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :name, :size, :age, :description, :gender, :address, :breed, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_breed_and_size_and_gender,
    against: [ :breed, :size, :gender ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
