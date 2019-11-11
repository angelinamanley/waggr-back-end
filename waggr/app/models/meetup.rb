class Meetup < ApplicationRecord
    belongs_to :group 
    has_many :attendances, dependent: :destroy
    geocoded_by :location
    after_validation :geocode


    # validates :first_name, presence: true
    # validates :last_name, presence: true
    # validates :descriptiion, presence: true
    # validates :location, presence: true
    # validate :is_in_future 



    def is_in_future
        if self.datetime.present? && self.dob > Date.today 
          errors.add(:dob, "cannot be in the future.")
        end
      end
    
end
