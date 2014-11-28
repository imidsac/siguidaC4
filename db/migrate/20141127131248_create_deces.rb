class CreateDeces < ActiveRecord::Migration
  def change
    create_table :deces do |t|
      t.string :n_volet
      t.datetime :date_dc
      t.string :local
      t.string :nom
      t.string :prenom
      t.datetime :date_nai
      t.string :lieu_nai
      t.string :sexe, limit: 1, default: 'm'
      t.string :situ_mat
      t.string :profession
      t.string :domicil
      t.string :nom_prenom_pere
      t.string :nom_prenom_mere
      t.string :nom_prenom_declare
      t.string :domicil_declare
      t.string :profession_declare
      t.datetime :date_declare_dece
      t.string :nom_prenom_officie
      t.string :qualite_officie
      t.datetime :date_officie

      t.timestamps
    end
  end
end
