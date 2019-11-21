class Group < ApplicationRecord
    has_many :memberships, dependent: :destroy 
    has_many :users, through: :memberships 
    has_many :meetups, dependent: :destroy
    has_many :posts , dependent: :destroy
end
