class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.text :pumps_tanks
      t.text :water_treatment
      t.text :construction
      t.text :pressure_systems
      t.text :flood_prevention

      t.timestamps null: false
    end
  end
end
