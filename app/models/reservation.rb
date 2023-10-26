class Reservation < ApplicationRecord
  belongs_to :yacht
  belongs_to :user
  belongs_to :city

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :yacht_id, presence: true
  validates :user_id, presence: true
  validates :city_id, presence: true
end
