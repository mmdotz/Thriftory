class RemovePhotoIdColumnFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :photo_id, :string
  end
end
