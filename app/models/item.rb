
class Item < ActiveRecord::Base
  belongs_to  :source
  belongs_to  :subcat2
  has_many    :finances, dependent: :destroy
  has_many    :photos, dependent: :destroy

  accepts_nested_attributes_for :finances
  validates_associated          :finances

  def self.to_csv
    attributes = %w(description quantity shipping storage_loc status source_id
    category_id subcat1_id subcat2_id)
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |item|
        csv << item.attributes.values_at(*attributes)
      end
    end
  end

  # creation of helper method to allow attachment method to know which object and field to use
  # see Item#index for use

  def photo_url
    ActionController::Base.helpers.attachment_url(self.photos.first, :image, :fill, 50, 50, format: :jpg)
  end

  def sum_total_outlay
    self.finances.map { |f| f.item_total_outlay }.sum
  end

end
