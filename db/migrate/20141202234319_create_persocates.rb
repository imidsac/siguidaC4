class CreatePersocates < ActiveRecord::Migration
  def change
    create_table :persocates do |t|
      t.string :nom_cate
      t.string :type_cat

      t.timestamps
    end
  end
end
