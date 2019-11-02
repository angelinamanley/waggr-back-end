class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :groups, :attendances, :dogs, :meetups 
  has_many :meetups


  


end
