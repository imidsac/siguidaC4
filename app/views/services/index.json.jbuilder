json.array!(@services) do |service|
  json.extract! service, :id, :nom_servie
  json.url service_url(service, format: :json)
end
