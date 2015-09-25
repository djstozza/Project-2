# == Schema Information
#
# Table name: wishes
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  subcategory_id :integer
#  name           :string
#  item_id        :integer
#  present        :boolean          default(FALSE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class WishTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
