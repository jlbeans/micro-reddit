class Comment < ApplicationRecord
  validates :author, :content, presence: true
  belongs_to :post
  belongs_to :user
end
