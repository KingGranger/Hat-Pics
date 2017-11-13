class User < ApplicationRecord
  has_many :ratings, foreign_key: 'rater_id'
  has_many :uploads, class_name: 'HatPic', foreign_key: 'uploader_id' #has many uploads?
  has_many :hat_pics, through: :ratings
end
