json.array!(@services) do |service|
  json.extract! service, :id, :pumps_tanks, :water_treatment, :construction, :pressure_systems, :flood_prevention
  json.url service_url(service, format: :json)
end
