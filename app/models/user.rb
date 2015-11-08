class User < ActiveRecord::Base
  has_secure_password
  has_many :sources
  has_many :items, through: :sources
  has_many :finances, through: :items
  validates :password, length: { minimum: 5 }
  validates :username, :uniqueness => true
  geocoded_by :address
  after_validation :geocode

end
