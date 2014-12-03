class CreateEchellons < ActiveRecord::Migration
  def change
    create_table :echellons do |t|
      t.references :persocla, index: true
      t.integer :num_echellon
      t.decimal :salaire_indice

      t.timestamps
    end
  end
end
