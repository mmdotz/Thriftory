class CreateSubcat2s < ActiveRecord::Migration
  def change
    create_table :subcat2s do |t|
      t.string :name, null: false
      t.belongs_to :subcat1, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
