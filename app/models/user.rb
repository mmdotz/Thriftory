class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: { minimum: 5 }
  validates :username, :uniqueness => true
end
