class AddLatitudeAndLongitudeToSources < ActiveRecord::Migration
  def change
    add_column :sources, :latitude, :float
    add_column :sources, :longitude, :float
  end
end
