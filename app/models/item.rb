# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :string
#  price          :float
#  subcategory_id :integer
#  user_id        :integer
#  category_id    :integer
#  image          :string
#  description    :string
#  created_at     :datetime
#  updated_at     :datetime
#

class Item < ActiveRecord::Base
	belongs_to :user
	belongs_to :subcategory
	has_one :bookmark

	validates :name, :presence => true
	validates :price, :presence => true
	validates :description, :presence => true
	validates :category_id, :presence => true
	validates :subcategory_id,  :presence => true

	
end
