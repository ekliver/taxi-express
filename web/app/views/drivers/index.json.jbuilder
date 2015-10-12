json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :dni, :nlic, :fpago, :email, :password
  json.url driver_url(driver, format: :json)
end
