class Dog < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :favorites, dependent: :destroy
  validates :name, :size, :age, :description, :gender, :address, :breed, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_breed_and_size_and_gender,
    against: [ :breed, :size, :gender ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
