class City < ApplicationRecord
  has_many :reservations
  has_many :yachts, through: :yacht_cities
  has_many :yacht_cities

  validates :name, presence: true
end
