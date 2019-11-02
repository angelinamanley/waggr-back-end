class Meetup < ApplicationRecord
    belongs_to :group 
    has_many :attendances 
end
