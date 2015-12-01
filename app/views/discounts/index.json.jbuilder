json.array!(@discounts) do |discount|
  json.extract! discount, :id, :amount_off, :title
  json.url discount_url(discount, format: :json)
end
