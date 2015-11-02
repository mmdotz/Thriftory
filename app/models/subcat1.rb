class Subcat1 < ActiveRecord::Base
  belongs_to  :category
  has_many    :subcat2s, dependent: :destroy

  accepts_nested_attributes_for :subcat2s
  validates_associated :subcat2s
end
