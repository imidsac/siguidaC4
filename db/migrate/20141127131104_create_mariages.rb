class CreateMariages < ActiveRecord::Migration
  def change
    create_table :mariages do |t|
      t.string :n_volet
      t.string :nom_mari
      t.string :prenom_mari
      t.datetime :date_nai_mari
      t.string :lieu_nai_mari
      t.string :profession_mari
      t.string :domicil_mari
      t.string :nom_prenom_pere_mari
      t.string :nom_prenom_mere_mari
      t.string :nom_prenom_tm_mari
      t.datetime :date_nai_tm_mari
      t.string :lieu_nai_tm_mari
      t.string :domicil_tm_mari
      t.string :nom_marie
      t.string :prenom_marie
      t.datetime :date_nai_marie
      t.string :lieu_nai_marie
      t.string :profession_marie
      t.string :domicil_marie
      t.string :nom_prenom_pere_marie
      t.string :nom_prenom_mere_marie
      t.string :consente_parent
      t.string :nom_prenom_tm_marie
      t.datetime :date_nai_tm_marie
      t.string :lieu_nai_tm_marie
      t.string :domicil_tm_marie
      t.decimal :dot
      t.string :nom_prenom_officie
      t.string :qualite_officie
      t.datetime :date_officie

      t.timestamps
    end
  end
end
