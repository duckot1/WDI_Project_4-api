class RequestSerializer < ActiveModel::Serializer
  attributes :job, :user, :message, :id
end
