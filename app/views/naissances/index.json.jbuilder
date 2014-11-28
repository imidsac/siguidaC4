json.array!(@naissances) do |naissance|
  json.extract! naissance, :id, :date_n, :nom, :prenom, :sexe, :local, :nom_prenom_pere, :domicil_pere, :date_nai_pere, :nationalite_pere, :profession_pere, :nom_prenom_mere, :domicil_mere, :date_nai_mere, :nationalite_mere, :profession_mere, :nom_prenom_declare, :domicil_declare, :date_nai_declare, :date_declare, :nom_prenom_officie, :qualite_officie, :date_officie, :n_volet
  json.url naissance_url(naissance, format: :json)
end
