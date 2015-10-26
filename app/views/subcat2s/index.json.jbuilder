json.array!(@subcat2s) do |subcat2|
  json.extract! subcat2, :id, :name, :subcat1_id
  json.url subcat2_url(subcat2, format: :json)
end
