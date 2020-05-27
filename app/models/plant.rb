class Plant < ApplicationRecord
  STATUSES = ["approved", "pending", "declined"]
  belongs_to :user
  validates :status, inclusion: { in: STATUSES }
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
end
