class HatPic < ApplicationRecord
  belongs_to :hat
  has_many :ratings
  # has_many :raters, through: :ratings, class_name: 'User' #paperclip gem
  has_many :comments
  # has_many :commenters, through: :comments, class_name: 'User'
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def scores
    self.ratings.map {|rating| rating.score}
  end

 def average_rating
    scores.reduce(:+) / scores.size unless scores.size == 0
  end

 def self.top_hats
   HatPic.all.sort {|a,b| b.average_rating <=> a.average_rating}
 end
end
