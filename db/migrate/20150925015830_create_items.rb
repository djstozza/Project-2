class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :subcategory_id
      t.integer :user_id
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
