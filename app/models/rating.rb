class Rating < ApplicationRecord
  belongs_to :hat_pic
  belongs_to :rater, class_name: 'User'
end
