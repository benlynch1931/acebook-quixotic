class User < ApplicationRecord
  has_many :posts, class_name: "Post"
  has_secure_password

  validates :email, presence: true, uniqueness: true
end
