class User < ActiveRecord::Base
  before_save :check_params
  has_secure_password
  has_many :sources
  has_many :items, through: :sources
  has_many :finances, through: :items
  has_many :categories, through: :items, :source => :sources
  validates :password, length: { minimum: 5 }
  validates :username, :uniqueness => true
  validates :email, :presence => true
  geocoded_by :address
  after_validation :geocode

  def check_params
    self.username = self.username.downcase
  end


end
