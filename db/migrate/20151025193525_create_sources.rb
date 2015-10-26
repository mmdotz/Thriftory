class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string    :name,     default: "unknown"
      t.datetime  :date,   default: Date.today
      t.string    :address,  default: "unknown"
      t.string    :type,     null: false

      t.timestamps        null: false
    end
  end
end
