json.array!(@mariages) do |mariage|
  json.extract! mariage, :id, :nom_mari, :prenom_mari, :date_nai_mari, :lieu_nai_mari, :profession_mari, :domicil_mari, :nom_prenom_pere_mari, :nom_prenom_mere_mari, :nom_prenom_tm_mari, :date_nai_tm_mari, :lieu_nai_tm_mari, :domicil_tm_mari, :nom_marie, :prenom_marie, :date_nai_marie, :lieu_nai_marie, :profession_marie, :domicil_marie, :nom_prenom_pere_marie, :nom_prenom_mere_marie, :consente_parent, :nom_prenom_tm_marie, :date_nai_tm_marie, :lieu_nai_tm_marie, :domicil_tm_marie, :dot, :nom_prenom_officie, :qualite_officie, :date_officie, :n_volet
  json.url mariage_url(mariage, format: :json)
end
