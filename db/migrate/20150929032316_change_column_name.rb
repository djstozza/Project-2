class ChangeColumnName < ActiveRecord::Migration
	def change
		rename_column :items, :sale, :sale_price
	end
end

