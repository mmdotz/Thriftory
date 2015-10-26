class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.integer :procure_cost, default: 0
      t.integer :shipping_cost, default: 0
      t.string  :pre_sale_notes
      t.integer :pre_sale_cost, default: 0
      t.integer :buyer_pmt, default: 0
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
