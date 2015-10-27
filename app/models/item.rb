class Item < ActiveRecord::Base
  belongs_to :source
  belongs_to :subcat2
  has_many :finances

  attachment :photo


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

end
