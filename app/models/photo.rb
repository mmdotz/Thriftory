class Photo < ActiveRecord::Base
  belongs_to :item
  attachment :image_id

end
