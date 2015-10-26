class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :description, limit: 150
      t.integer :quantity, default: 1
      t.string  :shipping
      t.string  :storage_loc
      t.string  :status, default: "ready for sale"
      t.string  :condition, default: "good"
      t.belongs_to :source, index: true, foreign_key: true
      t.belongs_to :subcat2, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
