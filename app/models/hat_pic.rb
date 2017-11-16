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
<<<<<<< HEAD
=======

  def average_rating
    scores.reduce(:+) / scores.size
  end
>>>>>>> 9cf2b1d3368b6ab65b1c0b7581f60333d093f191

 def average_rating
    scores.reduce(:+) / scores.size unless scores.size == 0
  end
end
