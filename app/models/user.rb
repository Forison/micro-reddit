class User < ApplicationRecord 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :username , presence: true , length: { maximum: 15 }
    validates :country , presence: true ,length: { maximum: 15 }
    validates :email , presence: true , length: { maximum: 15 }, 
    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sentitive: false}
end
