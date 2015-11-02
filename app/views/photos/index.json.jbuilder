json.array!(@photos) do |photo|
  json.extract! photo, :id, :image_id, :item_id
  json.url photo_url(photo, format: :json)
end
