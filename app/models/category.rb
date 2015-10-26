class Category < ActiveRecord::Base
  has_many :subcat1s
  has_many :items, through: :subcat1
end
