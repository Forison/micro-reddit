class User < ApplicationRecord 
    validates :username , presence: true , length: { maximum: 15 }
    validates :country , presence: true ,length: { maximum: 15 }
    validates :email , presence: true , length: { maximum: 15 }
end
