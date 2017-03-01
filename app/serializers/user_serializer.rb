class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address, :postcode, :dob, :email, :password, :password_confirmation, :image, :rating, :bio
end
