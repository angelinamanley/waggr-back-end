class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo, :admin_id, :users 
end
