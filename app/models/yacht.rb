class Yacht < ApplicationRecord
  has_many :reservations
  has_many :cities, through: :yacht_cities
  has_many :yacht_cities
end
