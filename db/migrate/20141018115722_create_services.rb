class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :nom_service

      t.timestamps
    end
  end
end
