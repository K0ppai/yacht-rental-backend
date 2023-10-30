class Reservation < ApplicationRecord
  belongs_to :yacht, class_name: "Yacht", foreign_key: "yacht_id"
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :city, class_name: "City", foreign_key: "city_id"

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :yacht_id, presence: true
  validates :user_id, presence: true
  validates :city_id, presence: true
  validate :no_overlapping_reservations
  validate :start_date_before_end_date

  before_save :calculate_total_value

  private

  def calculate_total_value
    days = (end_date - start_date).to_i
    fee_per_day = yacht.fee_per_day

    self.total_value = days * fee_per_day
  end

  def no_overlapping_reservations
    return unless start_date && end_date

    overlapping_reservations = Reservation.where(
      yacht:,
      city:,
    ).where(
      "(:new_start_date BETWEEN start_date AND end_date) OR (:new_end_date BETWEEN start_date AND end_date)",
      new_start_date: start_date,
      new_end_date: end_date,
    )

    errors.add(:base, "Yacht is not available during this period in this city but you can reserve this yacht in another city.") if overlapping_reservations.any?
  end

  def start_date_before_end_date
    if start_date >= end_date
      errors.add(:base, "Start date have to be earlier than end date.")
    end
  end
end
