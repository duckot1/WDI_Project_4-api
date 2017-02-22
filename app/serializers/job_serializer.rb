class JobSerializer < ActiveModel::Serializer
  attributes :owner, :title, :description, :location, :postcode, :time, :id
end
