class Subcat2 < ActiveRecord::Base
  belongs_to  :subcat1
  has_many    :items
end
