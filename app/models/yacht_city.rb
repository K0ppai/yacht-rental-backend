class YachtCity < ApplicationRecord
  belongs_to :city
  belongs_to :yacht

  validates :city_id, presence: true
  validates :yacht_id, presence: true
end
