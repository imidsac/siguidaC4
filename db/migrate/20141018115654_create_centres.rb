class CreateCentres < ActiveRecord::Migration
  def change
    create_table :centres do |t|
      t.string :nom_centre
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
