class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :amount_off
      t.text :title

      t.timestamps null: false
    end
  end
end
