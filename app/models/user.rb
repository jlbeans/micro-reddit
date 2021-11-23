class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 7 }
  validates :password, presence: true, uniqueness: true, length: { in: 8..12 }
  validates :email, presence: true, uniqueness: true

  has_many :posts
  has_many :comments
end
