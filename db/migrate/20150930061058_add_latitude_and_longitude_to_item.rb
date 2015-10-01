class AddLatitudeAndLongitudeToItem < ActiveRecord::Migration
  def change
    add_column :items, :latitude, :float
    add_column :items, :longitude, :float
    add_column :items, :address, :string
  end
end
