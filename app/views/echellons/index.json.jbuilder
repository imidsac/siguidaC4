json.array!(@echellons) do |echellon|
  json.extract! echellon, :id, :persocla_id, :num_echellon, :salaire_indice
  json.url echellon_url(echellon, format: :json)
end
