class MeetupSerializer < ActiveModel::Serializer
  attributes :name, :id, :datetime, :location, :description, :latitude, :longitude, :admin_id
  belongs_to :group
  has_many :attendances

end
