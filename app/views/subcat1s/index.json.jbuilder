json.array!(@subcat1s) do |subcat1|
  json.extract! subcat1, :id, :name, :category_id
  json.url subcat1_url(subcat1, format: :json)
end
