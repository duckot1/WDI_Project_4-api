class User < ApplicationRecord
  has_secure_password

  has_many :jobs_as_owner, class_name: "Job", foreign_key: :owner_id
  has_many :requests
  has_many :jobs_as_tasker, class_name: "Job", foreign_key: :tasker_id
  
  validates :email, presence: true, uniqueness: true
end
