class User < ApplicationRecord
  has_secure_password

  has_many :jobs_as_owner, class_name: "Job", foreign_key: :owner_id
  has_many :requests
  has_many :jobs_as_tasker, class_name: "Job", foreign_key: :tasker_id

  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :postcode, presence: true
  validates :dob, presence: true
  validate :age_validation

  def age_validation
    if dob.present? && dob + 16.years > Date.today
      errors.add(:dob, "You are too young!")
    end
  end

end
