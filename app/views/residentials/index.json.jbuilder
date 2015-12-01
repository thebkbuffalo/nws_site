json.array!(@residentials) do |residential|
  json.extract! residential, :id, :water_service, :pump_service, :treatment
  json.url residential_url(residential, format: :json)
end
