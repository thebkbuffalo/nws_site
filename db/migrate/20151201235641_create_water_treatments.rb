class CreateWaterTreatments < ActiveRecord::Migration
  def change
    create_table :water_treatments do |t|
      t.text :house_system
      t.text :reverse_osmosis

      t.timestamps null: false
    end
  end
end
