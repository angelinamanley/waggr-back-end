class MeetupSerializer < ActiveModel::Serializer
  attributes :name, :id, :datetime, :location, :description, :latitude, :longitude
  has_many :attendances

end
