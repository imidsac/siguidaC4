json.array!(@persocates) do |persocate|
  json.extract! persocate, :id, :nom_cate, :type_cat
  json.url persocate_url(persocate, format: :json)
end
