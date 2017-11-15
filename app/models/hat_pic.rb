class HatPic < ApplicationRecord
  belongs_to :hat
  has_many :ratings
  has_many :comments
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  def scores
    self.ratings.collect {|rating| rating.score}
  end

  def average_rating
    scores.reduce(:+) / scores.size
  end

end
