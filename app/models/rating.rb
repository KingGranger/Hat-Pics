class Rating < ApplicationRecord
  belongs_to :hat_pic
  belongs_to :user
  validates :score, length: {maximum: 10}

  
end
