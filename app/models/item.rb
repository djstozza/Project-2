# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :string
#  price          :float
#  subcategory_id :integer
#  user_id        :integer
#  active         :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Item < ActiveRecord::Base
	belongs_to :user
	belongs_to :subcategory
end