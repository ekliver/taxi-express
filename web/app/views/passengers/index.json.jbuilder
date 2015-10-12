json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :name, :dni, :genero, :email, :password
  json.url passenger_url(passenger, format: :json)
end
