class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :groups, :attendances, :dogs, :meetups, :memberships, :location, :latitude, :longitude, :photo, :aboutme

  has_many :meetups



  


end
