class AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :category_id, :integer
    add_column :items, :subcat1_id, :integer
  end
end
