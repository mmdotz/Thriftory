json.array!(@items) do |item|
  json.extract! item, :id, :description, :quantity, :shipping, :storage_loc, :status, :source_id
  json.url item_url(item, format: :json)
end
