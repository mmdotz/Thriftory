json.array!(@finances) do |finance|
  json.extract! finance, :id, :procure_cost, :shipping_cost, :pre_sale_notes, :pre_sale_cost, :buyer_pmt, :item_id
  json.url finance_url(finance, format: :json)
end
