class Meetup < ApplicationRecord
    belongs_to :group 
    has_many :attendances, dependent: :destroy
    geocoded_by :location
    after_validation :geocode
    
end
