class Yacht < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :yacht_cities, dependent: :destroy
  has_many :cities, through: :yacht_cities, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true
  validates :model, presence: true, length: { maximum: 255 }
  validates :image, presence: true
  validates :fee_per_day, presence: true, numericality: { greater_than: 0 }
end
