class AddFullAddressDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address1, :string
    add_column :users, :suburb, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
