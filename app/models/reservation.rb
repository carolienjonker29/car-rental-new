class Reservation < ApplicationRecord
  belongs_to :car

  validates :start_date, :end_date, :car_id, presence: true
end
