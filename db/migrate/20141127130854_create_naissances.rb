class CreateNaissances < ActiveRecord::Migration
  def change
    create_table :naissances do |t|
      t.string :n_volet
      t.datetime :date_n
      t.string :nom
      t.string :prenom
      t.string :sexe
      t.string :local
      t.string :nom_prenom_pere
      t.string :domicil_pere
      t.datetime :date_nai_pere
      t.string :nationalite_pere
      t.string :profession_pere
      t.string :nom_prenom_mere
      t.string :domicil_mere
      t.datetime :date_nai_mere
      t.string :nationalite_mere
      t.string :profession_mere
      t.string :nom_prenom_declare
      t.string :domicil_declare
      t.datetime :date_nai_declare
      t.datetime :date_declare
      t.string :nom_prenom_officie
      t.string :qualite_officie
      t.datetime :date_officie

      t.timestamps
    end
  end
end
