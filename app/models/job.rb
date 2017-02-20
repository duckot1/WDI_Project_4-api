class Job < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  belongs_to :tasker, class_name: "User", foreign_key: :tasker_id
  has_many :requests
end
