class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo, :admin_id, :users, :posts 
  has_many :posts
   has_many :meetups
end
