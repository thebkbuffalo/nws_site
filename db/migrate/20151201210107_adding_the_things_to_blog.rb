class AddingTheThingsToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :content, :text
    add_column :blogs, :author, :string
  end
end
