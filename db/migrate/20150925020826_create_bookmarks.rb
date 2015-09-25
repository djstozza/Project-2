class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :item_id
      t.boolean :active, :default => true

      t.timestamps null: false
    end
  end
end
