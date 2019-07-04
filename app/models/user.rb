class User < ApplicationRecord
    validates :username , presence: true
    validates :country , presence: true
    validates :email , presence: true 
end
