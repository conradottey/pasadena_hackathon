json.array!(@weathers) do |weather|
  json.extract! weather, :weather_date, :condition
  json.url weather_url(weather, format: :json)
end