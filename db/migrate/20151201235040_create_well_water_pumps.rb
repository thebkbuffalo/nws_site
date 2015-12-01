class CreateWellWaterPumps < ActiveRecord::Migration
  def change
    create_table :well_water_pumps do |t|
      t.text :pump_service
      t.text :well_solutions

      t.timestamps null: false
    end
  end
end
