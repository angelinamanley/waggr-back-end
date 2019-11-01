class MeetupSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :location, :description, :attendences
end
