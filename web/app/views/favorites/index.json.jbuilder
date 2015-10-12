json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :passenger_id, :route_id
  json.url favorite_url(favorite, format: :json)
end
