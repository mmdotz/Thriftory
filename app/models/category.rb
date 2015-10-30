class Category < ActiveRecord::Base
  has_many :subcat1s
  has_many :subcat2s, through: :subcat1s
end
