class AddItemIdToIntermediary < ActiveRecord::Migration
  def change
  	add_column :intermediaries, :item_id, :integer
  end
end
