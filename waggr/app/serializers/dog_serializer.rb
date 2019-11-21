class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :birthday, :photo, :gender, :bio
  has_one :user
end
