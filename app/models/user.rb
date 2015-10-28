class User < ActiveRecord::Base
  validates :password, length: { minimum: 5 }
  validates :username, :uniqueness => true
end
