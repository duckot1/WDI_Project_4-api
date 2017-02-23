class JobSerializer < ActiveModel::Serializer
  attributes :owner, :title, :description, :location, :postcode, :datetime, :id, :status, :tasker_id


end
