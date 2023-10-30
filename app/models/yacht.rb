class Yacht < ApplicationRecord
  has_many :reservations
  has_many :yacht_cities
  has_many :cities, through: :yacht_cities

  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true
  validates :model, presence: true, length: { maximum: 255 }
  validates :image, presence: true
  validates :fee_per_day, presence: true, numericality: { greater_than: 0 }
end
