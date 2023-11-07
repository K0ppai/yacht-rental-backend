class City < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :yacht_cities, dependent: :destroy
  has_many :yachts, through: :yacht_cities, dependent: :destroy

  validates :name, presence: true
end
