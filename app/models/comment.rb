class Comment < ApplicationRecord
  belongs_to :hat_pic
  belongs_to :commenter, class_name: "User"
end
