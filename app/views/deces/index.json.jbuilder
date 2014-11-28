json.array!(@deces) do |dece|
  json.extract! dece, :id, :date_dc, :local, :nom, :prenom, :date_nai, :lieu_nai, :sexe, :situ_mat, :profession, :domicil, :nom_prenom_pere, :nom_prenom_mere, :nom_prenom_declare, :domicil_declare, :profession_declare, :date_declare_dece, :nom_prenom_officie, :qualite_officie, :date_officie, :n_volet
  json.url dece_url(dece, format: :json)
end
