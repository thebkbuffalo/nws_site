class CreateCommercials < ActiveRecord::Migration
  def change
    create_table :commercials do |t|
      t.text :water_service

      t.timestamps null: false
    end
  end
end
