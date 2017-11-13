class Hat < ApplicationRecord
  belongs_to :user
  has_many :hat_pics
end
