class Car < ApplicationRecord
  has_many :reservations,  dependent: :destroy

  validates :size, presence: true
  validates :availability, presence: true
end
