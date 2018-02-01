class User < ApplicationRecord

  has_many :ratings
  has_many :comments
  has_many :hats
  has_many :hat_pics, through: :hats


  has_secure_password
  validates_confirmation_of :password
  validates :username, presence: true, uniqueness: true, length: {in: 4..16}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create


  has_secure_password

  validates_confirmation_of :password
  validates :username, presence: true, uniqueness: true, length: {in: 4..16}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

end
