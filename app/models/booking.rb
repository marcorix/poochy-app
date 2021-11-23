class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  validates :start_date, :end_date, presence: true
end
