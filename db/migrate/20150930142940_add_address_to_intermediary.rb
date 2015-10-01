class AddAddressToIntermediary < ActiveRecord::Migration
  def change
    add_column :intermediaries, :address, :string
  end
end
