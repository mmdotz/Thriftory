json.array!(@items) do |item|
  json.extract! item, :id, :category, :subcat1, :subcat2, :description, :quantity, :shipping, :storage_loc, :status, :photo, :source_id
  json.url item_url(item, format: :json)
end
