class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :groups
end
