class User < ApplicationRecord
    geocoded_by :location
    after_validation :geocode
    
    has_many :dogs, dependent: :destroy
    has_many :memberships, dependent: :destroy
    has_many :posts, dependent: :destroy
    has_many :attendances, dependent: :destroy

    has_many :groups, through: :memberships
    has_many :meetups, through: :attendances
    has_secure_password

  




end
