class CreateSubcat1s < ActiveRecord::Migration
  def change
    create_table :subcat1s do |t|
      t.string :name, null: false
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
