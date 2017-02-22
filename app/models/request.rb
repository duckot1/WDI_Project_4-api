class Request < ApplicationRecord
  belongs_to :job
  belongs_to :user

  enum status: [ :rejected, :pending, :accepted ]

  before_save :accept

  def accept
    if !self.new_record? && self.status == "pending"
      job = Job.find_by_id(self.job_id)
      job.requests.each do |request|
        request.status = 0
        request.save
      end
      self.status = 2
    end
  end

end
