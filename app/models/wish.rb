# == Schema Information
#
# Table name: wishes
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  category_id    :integer
#  subcategory_id :integer
#  name           :string
#  item_id        :integer
#  present        :boolean          default(FALSE)
#  created_at     :datetime
#  updated_at     :datetime
#

class Wish < ActiveRecord::Base
	belongs_to :user
	belongs_to :subcategory
	has_one :item
	
	validates :name, :presence => true
	validates :category_id, :presence => true
	validates :subcategory_id, :presence => true


end
