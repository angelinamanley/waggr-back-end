class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :birthday, :photos, :gender, :activity_level, :bio
  has_one :user
end
