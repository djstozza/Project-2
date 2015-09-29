class AddSaleIdToItem < ActiveRecord::Migration
  def change
  	add_column :items, :sale_id, :integer
  end
end
