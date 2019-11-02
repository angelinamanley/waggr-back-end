class MeetupSerializer < ActiveModel::Serializer
  attributes :name, :id, :datetime, :location, :description
  has_many :attendances

end
