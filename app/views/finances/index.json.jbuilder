json.array!(@finances) do |finance|
  json.extract! finance, :id, :procure_cost, :shipping_cost, :pre-sale_notes, :pre-sale_cost, :buyer_pmt, :item_id
  json.url finance_url(finance, format: :json)
end
