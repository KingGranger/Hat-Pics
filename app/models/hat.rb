class Hat < ApplicationRecord
  belongs_to :user
  has_many :hat_pics

  def self.search(search)
    where("name LIKE ? OR brand LIKE ? OR color LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
