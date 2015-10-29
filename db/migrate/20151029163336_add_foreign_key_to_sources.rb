class AddForeignKeyToSources < ActiveRecord::Migration
  def change
    add_foreign_key :sources, :users
  end
end
