class HatPic < ApplicationRecord
  belongs_to :hat
  has_many :ratings
  # has_many :raters, through: :ratings, class_name: 'User' #paperclip gem
  has_many :comments
  # has_many :commenters, through: :comments, class_name: 'User'
end
