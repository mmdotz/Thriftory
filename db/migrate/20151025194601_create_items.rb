class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :category, limit: 35, null: false
      t.string  :subcat1, limit: 35
      t.string  :subcat2, limit: 35
      t.string  :description, limit: 150
      t.integer :quantity, default: 1
      t.string  :shipping
      t.string  :storage_loc
      t.string  :status
      t.string  :condition, default: "good"
      t.url     :photo
      t.belongs_to :source, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
