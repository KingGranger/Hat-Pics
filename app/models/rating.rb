class Rating < ApplicationRecord
  belongs_to :hat_pic
  belongs_to :user
end
