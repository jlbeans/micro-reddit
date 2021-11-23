class Post < ApplicationRecord
  validates :author, :title, :content, :user_id, presence: true

  belongs_to :user
  has_many :comments
end
