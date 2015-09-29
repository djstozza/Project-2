# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
	has_many :subcategories
	has_many :items, :through => :subcategories
	has_many :wishes, :through => :subcategories

	validates :name, :presence => true
end
