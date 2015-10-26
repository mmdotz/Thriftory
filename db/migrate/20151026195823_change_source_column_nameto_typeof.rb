class ChangeSourceColumnNametoTypeof < ActiveRecord::Migration
  def change
    rename_column :sources, :type, :type_of
  end
end
