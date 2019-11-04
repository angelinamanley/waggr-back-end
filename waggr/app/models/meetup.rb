class Meetup < ApplicationRecord
    belongs_to :group 
    has_many :attendances 
    geocoded_by :location
    after_validation :geocode
    
end
