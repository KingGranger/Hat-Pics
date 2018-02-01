class Comment < ApplicationRecord
  belongs_to :hat_pic
  belongs_to :user

  validates :content, length: {maximum: 140}
  validates :content, presence: true
end
