class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :user_id
      t.integer :subcategory_id
      t.string :name
      t.integer :item_id, :default => nil
      
      t.boolean :present, :default => false

      t.timestamps null: false
    end
  end
end
