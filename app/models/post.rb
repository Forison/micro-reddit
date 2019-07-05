class Post < ApplicationRecord
  # belongs_to :user_id
  validates :comment , presence: true, length: {maximum: 2}
end
