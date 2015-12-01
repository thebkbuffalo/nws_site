json.array!(@commercials) do |commercial|
  json.extract! commercial, :id, :water_service
  json.url commercial_url(commercial, format: :json)
end
