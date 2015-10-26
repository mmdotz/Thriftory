class Item < ActiveRecord::Base
  belongs_to :source
  belongs_to :subcat2
  has_many :finances
end
