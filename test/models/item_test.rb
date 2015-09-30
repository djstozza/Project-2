# == Schema Information
#
# Table name: items
#
#  id                  :integer          not null, primary key
#  name                :string
#  price               :integer
#  subcategory_id      :integer
#  user_id             :integer
#  category_id         :integer
#  image               :string
#  description         :string
#  created_at          :datetime
#  updated_at          :datetime
#  private_room        :string
#  private_bathroom    :string
#  rooms               :integer
#  bathrooms           :integer
#  parking             :string
#  laundry             :string
#  rent                :integer
#  sale_price          :integer
#  housing_type        :string
#  area                :integer
#  available           :date
#  openhouse1          :datetime
#  openhouse2          :datetime
#  openhouse3          :datetime
#  pets                :boolean
#  furnished           :boolean
#  smoking             :boolean
#  wheelchair          :boolean
#  employment_type     :string
#  salary              :string
#  recruiter           :boolean
#  internship          :boolean
#  non_profit          :boolean
#  telecommuting       :boolean
#  disability          :boolean
#  make                :string
#  condition           :string
#  make_type           :string
#  dimensions          :string
#  serial_number       :string
#  engine_hours        :integer
#  length_overall      :integer
#  propulsion_type     :string
#  make_year           :integer
#  vin                 :string
#  cylinders           :string
#  drive               :string
#  fuel                :string
#  engine_displacement :string
#  paint_colour        :string
#  size                :string
#  title_status        :string
#  transmission        :string
#  car_type            :string
#  media_type          :string
#  mobile_os           :string
#  garage_sale1        :date
#  garage_sale2        :date
#  garage_sale3        :date
#  start_time          :time
#  odometer            :integer
#  event               :datetime
#  tickets             :integer
#  venue               :string
#  sale_id             :integer
#

#  id                  :integer          not null, primary key
#  name                :string
#  price               :float
#  subcategory_id      :integer
#  user_id             :integer
#  category_id         :integer
#  image               :string
#  description         :string
#  created_at          :datetime
#  updated_at          :datetime
#  private_room        :string
#  private_bathroom    :string
#  rooms               :integer
#  bathrooms           :integer
#  parking             :string
#  laundry             :string
#  rent                :integer
#  sale_price          :integer
#  housing_type        :string
#  area                :integer
#  available           :date
#  openhouse1          :datetime
#  openhouse2          :datetime
#  openhouse3          :datetime
#  pets                :boolean
#  furnished           :boolean
#  smoking             :boolean
#  wheelchair          :boolean
#  employment_type     :string
#  salary              :string
#  recruiter           :boolean
#  internship          :boolean
#  non_profit          :boolean
#  telecommuting       :boolean
#  disability          :boolean
#  make                :string
#  condition           :string
#  model               :string
#  dimensions          :string
#  serial_number       :string
#  engine_hours        :integer
#  length_overall      :integer
#  propulsion_type     :string
#  model_year          :date
#  vin                 :string
#  cylinders           :string
#  drive               :string
#  fuel                :string
#  engine_displacement :string
#  paint_colour        :string
#  size                :string
#  title_status        :string
#  transmission        :string
#  car_type            :string
#  media_type          :string
#  mobile_os           :string
#  garage_sale1        :date
#  garage_sale2        :date
#  garage_sale3        :date
#  start_time          :time
#  odometer            :integer
#  event               :datetime
#  tickets             :integer
#  venue               :string

#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
