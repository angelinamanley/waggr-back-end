class User < ApplicationRecord
    geocoded_by :location
    after_validation :geocode
    
    has_many :dogs 
    has_many :memberships
    has_many :posts
    has_many :attendances 

    has_many :groups, through: :memberships
    has_many :meetups, through: :attendances
    has_secure_password

  




end
