class AddSaleToItems < ActiveRecord::Migration
  def change
    add_column :items, :make, :string
    add_column :items, :condition, :string
    add_column :items, :make_type, :string
    add_column :items, :dimensions, :string
    add_column :items, :serial_number, :string
    add_column :items, :engine_hours, :integer
    add_column :items, :length_overall, :integer
    add_column :items, :propulsion_type, :string
    add_column :items, :make_year, :integer
    add_column :items, :vin, :string
    add_column :items, :cylinders, :string
    add_column :items, :drive, :string
    add_column :items, :fuel, :string
    add_column :items, :engine_displacement, :string
    add_column :items, :paint_colour, :string
    add_column :items, :size, :string
    add_column :items, :title_status, :string
    add_column :items, :transmission, :string
    add_column :items, :car_type, :string
    add_column :items, :media_type, :string
    add_column :items, :mobile_os, :string
    add_column :items, :garage_sale1, :date
    add_column :items, :garage_sale2, :date
    add_column :items, :garage_sale3, :date
    add_column :items, :start_time, :time
    add_column :items, :odometer, :integer
    add_column :items, :event, :datetime
    add_column :items, :tickets, :integer
    add_column :items, :venue, :string
  end
end
