class CreatePersoclas < ActiveRecord::Migration
  def change
    create_table :persoclas do |t|
      t.references :persocate, index: true
      t.integer :num_cla

      t.timestamps
    end
  end
end
