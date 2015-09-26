class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :subcategory_id
      t.integer :user_id
      t.integer :category_id
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
