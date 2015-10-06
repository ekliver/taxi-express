json.array!(@requests) do |request|
  json.extract! request, :id, :passenger_id, :distini, :distfin, :monto, :direcexini, :directexfin, :pasajeros, :tipovehiculo, :tipopago, :estado
  json.url request_url(request, format: :json)
end
