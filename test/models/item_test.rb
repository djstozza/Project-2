# == Schema Information
#
# Table name: items
#
#  id               :integer          not null, primary key
#  name             :string
#  price            :float
#  subcategory_id   :integer
#  user_id          :integer
#  category_id      :integer
#  image            :string
#  description      :string
#  created_at       :datetime
#  updated_at       :datetime
#  private_room     :string
#  private_bathroom :string
#  rooms            :integer
#  bathrooms        :integer
#  parking          :string
#  laundry          :string
#  rent             :integer
#  sale             :integer
#  housing_type     :string
#  area             :integer
#  available        :date
#  openhouse1       :datetime
#  openhouse2       :datetime
#  openhouse3       :datetime
#  pets             :boolean
#  furnished        :boolean
#  smoking          :boolean
#  wheelchair       :boolean
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
