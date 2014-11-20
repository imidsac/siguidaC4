class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :nom_servie

      t.timestamps
    end
  end
end
