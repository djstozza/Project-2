# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :string
#  price          :float
#  subcategory_id :integer
#  user_id        :integer
#  active         :boolean          default(TRUE)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
