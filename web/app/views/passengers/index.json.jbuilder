json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :nombre, :apellido, :dni, :sexo, :formapago, :tarjeta, :email, :password
  json.url passenger_url(passenger, format: :json)
end
