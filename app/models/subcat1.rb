class Subcat1 < ActiveRecord::Base
  belongs_to  :category
  has_many    :subcat2s
end
