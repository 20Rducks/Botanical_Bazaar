class Plant < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy

  # Implement valid plant species #
  validates :species, :price, :description, presence: true
  validates :description, length: { in: 20..100 }

  # include PgSearch::Model
  # pg_search_scope :search_by_species_and_description,
  #   against: [ :species, :description ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  # pg_search_scope :search_by_species_and_price,
  #   against: [ :species, :price ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  # pg_search_scope :search_by_description_and_price,
  #   against: [ :description, :price ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  # def self.search(query)
  #   string = query.to_s.gsub('.', '')
  #   where("price LIKE ?", "%#{string}%")
  # end

end
