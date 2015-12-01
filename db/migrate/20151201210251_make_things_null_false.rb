class MakeThingsNullFalse < ActiveRecord::Migration
  def change
    change_column :blogs, :title, :string, null: false
    change_column :blogs, :content, :text, null: false
  end
end
