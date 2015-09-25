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

class Wish < ActiveRecord::Base
	belongs_to :user
	belongs_to :subcategory
	has_one :item
	
	


end
