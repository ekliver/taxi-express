json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :marca, :modelo, :ano, :color, :npass, :tipo, :driver_id
  json.url vehicle_url(vehicle, format: :json)
end
