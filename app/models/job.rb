class Job < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  belongs_to :tasker, class_name: "User", foreign_key: :tasker_id, required: false
  has_many :applicants, class_name: "User", foreign_key: :applicant_id
  has_many :requests

  validates :location, presence: true
  validates :description, presence: true
  validates :time, presence: true
  validates :postcode, presence: true
  validates :owner_id, presence: true
  # validate  :time_validation
  #
  # def time_validation
  #   if time.present? && time < Time.now
  #     errors.add(:time, "That is in the past")
  #   end
  # end

end
