class Plant < ApplicationRecord
  STATUSES = ["approved", "pending", "declined"]
  belongs_to :user
  validates :status, inclusion: { in: STATUSES }

end
