json.array!(@well_water_pumps) do |well_water_pump|
  json.extract! well_water_pump, :id, :pump_service, :well_solutions
  json.url well_water_pump_url(well_water_pump, format: :json)
end
