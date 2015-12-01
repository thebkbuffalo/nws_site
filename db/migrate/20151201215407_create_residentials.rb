class CreateResidentials < ActiveRecord::Migration
  def change
    create_table :residentials do |t|
      t.text :water_service
      t.text :pump_service
      t.text :treatment

      t.timestamps null: false
    end
  end
end
