json.array!(@personnels) do |personnel|
  json.extract! personnel, :id, :n_decision, :n_mle, :n_nina, :nom, :prenom, :date_nai, :lieu_nai, :sexe, :situ_f, :nb_enf, :corps, :em_occ, :phone, :email, :compte_banc, :address, :date_recr, :salaire_b, :regime_matrimonial, :nom_prenom_pere, :date_nai_pere, :nom_prenom_mere, :date_nai_mere, :etat
  json.url personnel_url(personnel, format: :json)
end
