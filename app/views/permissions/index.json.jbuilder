json.array!(@permissions) do |permission|
  json.extract! permission, :id, :date_debut, :date_fin
  json.url permission_url(permission, format: :json)
end
