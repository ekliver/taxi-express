json.array!(@drivers) do |driver|
  json.extract! driver, :id, :nombre, :apellido, :dni, :sexo, :formapago, :licencia, :tarjeta, :email, :password
  json.url driver_url(driver, format: :json)
end
