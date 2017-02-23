class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :message, :rating, :user, :job
  has_one :user
  has_one :job
end
