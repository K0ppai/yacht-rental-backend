class Reservation < ApplicationRecord
  belongs_to :yacht
  belongs_to :user
  belongs_to :city
end
