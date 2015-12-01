json.array!(@water_treatments) do |water_treatment|
  json.extract! water_treatment, :id, :house_system, :reverse_osmosis
  json.url water_treatment_url(water_treatment, format: :json)
end
