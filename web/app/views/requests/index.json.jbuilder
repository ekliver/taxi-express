json.array!(@requests) do |request|
  json.extract! request, :id, :direcini, :direcfin, :npass, :fpago, :estado, :calif, :passenger_id, :driver_id, :route_id
  json.url request_url(request, format: :json)
end
