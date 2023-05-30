class Plant < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  # Implement valid plant species #
  validates :species, :price, :description, presence: true
  validates :description, length: { in: 20..100 }
end
