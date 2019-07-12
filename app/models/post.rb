class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :comment , presence: true , length: { minimum: 5}
end
