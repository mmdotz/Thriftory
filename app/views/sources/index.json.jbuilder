json.array!(@sources) do |source|
  json.extract! source, :id, :name, :date, :address, :type
  json.url source_url(source, format: :json)
end
