class Plant < ApplicationRecord
  belongs_to :user

  # Implement valid plant species #
  validates :species, :price, :description, presence: true
  validates :description, length: { in: 20..100 }
end
