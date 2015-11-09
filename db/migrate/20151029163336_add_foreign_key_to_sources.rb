class AddForeignKeyToSources < ActiveRecord::Migration
  def change
    add_column :sources, :user_id, :integer
    add_foreign_key :sources, :users
  end
end
