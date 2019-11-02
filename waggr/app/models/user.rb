class User < ApplicationRecord
    has_many :dogs 
    has_many :memberships
    has_many :posts
    has_many :attendances 

    has_many :groups, through: :memberships
    has_many :meetups, through: :attendances
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true




end
