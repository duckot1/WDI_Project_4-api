class RequestSerializer < ActiveModel::Serializer
  attributes :job, :user, :message
end
