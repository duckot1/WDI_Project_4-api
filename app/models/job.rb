class Job < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  belongs_to :tasker, class_name: "User", foreign_key: :tasker_id, required: false
  has_many :requests

  enum status: [ :open, :filled, :finished ]

  validates :location, presence: true
  validates :description, presence: true
  validates :postcode, presence: true
  validates :owner_id, presence: true
  validates :datetime, presence: true

  validate  :datetime_validation

  def datetime_validation
    if datetime.present? && datetime < DateTime.now && self.record_new?
      errors.add(:time, "That is in the past")
    end
  end
end
