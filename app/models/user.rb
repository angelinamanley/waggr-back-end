class User < ApplicationRecord

    
    has_many :dogs, dependent: :destroy
    has_many :memberships, dependent: :destroy
    has_many :posts, dependent: :destroy
    has_many :attendances, dependent: :destroy

    has_many :groups, through: :memberships
    has_many :meetups, through: :attendances
    has_secure_password

    # validates :first_name, presence: true
    # validates :last_name, presence: true

    validates :email, presence: true, uniqueness: true 
    # validates :password, presence: true



  




end
