class Request < ApplicationRecord
  belongs_to :job
  belongs_to :user

  enum status: [ :rejected, :pending, :accepted ]

  # after_create :set_applicant

  # def set_applicant
  #   job = Job.where("id = #{self.job_id}")
  #   job.first.applicants << self.user
  #   p job
  # end
end
