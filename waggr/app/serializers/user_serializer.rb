class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :groups, :attendances, :dogs
  
  
  
  def user
    UserSerializer.new(self.object.user)
  end

end
