class Request < ApplicationRecord
  belongs_to :job
  belongs_to :user

  enum status: [ :rejected, :pending, :accepted ]
end
