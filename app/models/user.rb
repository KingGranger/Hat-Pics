class User < ApplicationRecord
  has_many :uploads, class_name: 'HatPic' #has many uploads?
  has_many :ratings, foreign_key:'rater_id'
  has_many :hat_pics, through: :ratings
  has_many :comments, foreign_key: 'commenter_id'
  has_many :hat_pics, through: :comments

end
