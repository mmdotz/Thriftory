class User < ActiveRecord::Base
  before_create :check_params
  has_secure_password
  has_many :sources
  has_many :items, through: :sources
  has_many :finances, through: :items
  validates :password, length: { minimum: 5 }
  validates :username, :uniqueness => true
  geocoded_by :address
  after_validation :geocode

  def check_params
    self.username = self.username.downcase
  end

end
