class AddHousingToItems < ActiveRecord::Migration
  def change
    add_column :items, :private_room, :string
    add_column :items, :private_bathroom, :string
    add_column :items, :parking, :string
    add_column :items, :laundry, :string
    add_column :items, :rent, :integer
    add_column :items, :housing_type, :string
    add_column :items, :area, :integer
    add_column :items, :available, :date
    add_column :items, :openhouse1, :datetime
    add_column :items, :openhouse2, :datetime
    add_column :items, :openhouse3, :datetime
    add_column :items, :cats, :boolean
    add_column :items, :dogs, :boolean
    add_column :items, :furnished, :boolean
    add_column :items, :no_smoking, :boolean
    add_column :items, :wheelchair, :boolean
  end
end
