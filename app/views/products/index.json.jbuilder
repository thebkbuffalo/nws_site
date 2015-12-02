json.array!(@products) do |product|
  json.extract! product, :id, :pumps_tanks
  json.url product_url(product, format: :json)
end
