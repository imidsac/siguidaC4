json.array!(@persoclas) do |persocla|
  json.extract! persocla, :id, :persocate_id, :num_cla
  json.url persocla_url(persocla, format: :json)
end
