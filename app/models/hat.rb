class Hat < ApplicationRecord
  belongs_to :user
  has_many :hat_pics

  def self.search(search)
    where("name LIKE ? OR description LIKE ?",  "%#{search}%", "%#{search}%")
  end

end
