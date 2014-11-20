json.array!(@centres) do |centre|
  json.extract! centre, :id, :nom_centre, :phone, :address
  json.url centre_url(centre, format: :json)
end
