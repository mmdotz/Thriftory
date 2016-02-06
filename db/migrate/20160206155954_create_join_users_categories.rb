class CreateJoinUsersCategories < ActiveRecord::Migration
  def change
    create_join_table :users, :categories do |t|
      t.index :user_id
      t.index :category_id
    end
  end
end
