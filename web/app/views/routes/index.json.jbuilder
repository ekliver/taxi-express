json.array!(@routes) do |route|
  json.extract! route, :id, :rutacon, :precio
  json.url route_url(route, format: :json)
end
