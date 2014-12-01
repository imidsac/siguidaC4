class CreatePersonnels < ActiveRecord::Migration
  def change
    create_table :personnels do |t|
      t.string :n_decision
      t.string :n_mle
      t.string :n_nina
      t.string :nom
      t.string :prenom
      t.date :date_nai, default: Time.now
      t.string :lieu_nai
      t.string :sexe
      t.string :situ_f
      t.integer :nb_enf
      t.string :corps
      t.string :em_occ
      t.string :phone
      t.string :email
      t.string :compte_banc
      t.string :address
      t.date :date_recr
      t.decimal :salaire_b
      t.string :regime_matrimonial
      t.string :nom_prenom_pere
      t.date :date_nai_pere
      t.string :nom_prenom_mere
      t.date :date_nai_mere
      t.string :etat
      t.references :service, index: true
      t.references :centre, index: true
      t.references :category, index: true
      t.integer :indice

      t.timestamps
    end
  end
end
