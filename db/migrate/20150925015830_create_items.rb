class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :subcategory_id
      t.integer :user_id
      t.boolean :active

      t.timestamps
    end
  end
end
