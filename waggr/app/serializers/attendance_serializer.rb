class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :meetup_name, :user, :meetup
  belongs_to :user
  belongs_to :meetup

  def meetup_name
    self.object.meetup.name
  end


end



