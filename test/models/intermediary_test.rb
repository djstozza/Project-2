# == Schema Information
#
# Table name: intermediaries
#
#  id         :integer          not null, primary key
#  name       :string
#  longitude  :float
#  latitude   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer
#  address    :string
#

require 'test_helper'

class IntermediaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
