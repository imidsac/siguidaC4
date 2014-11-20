class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.datetime :date_debut
      t.datetime :date_fin

      t.timestamps
    end
  end
end
