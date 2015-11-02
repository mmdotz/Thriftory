class Category < ActiveRecord::Base
  has_many :subcat1s, dependent: :destroy
  has_many :subcat2s, through:  :subcat1s

  accepts_nested_attributes_for :subcat1s
  validates_associated          :subcat1s
  validates :name, presence: true
  #
  # accepts_nested_attributes_for :subcat2s
  # validates_associated          :subcat2s
  # validates :name, presence: true
  # the text field on the form only shows when this is commented out

end
