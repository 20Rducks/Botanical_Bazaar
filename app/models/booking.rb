class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  validates :start_date, :end_date, presence: true
  # validates :start_date, comparison: { greater_than: :end_date }
end
