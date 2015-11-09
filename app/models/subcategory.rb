# == Schema Information
#
# Table name: subcategories
#
#  id          :integer          not null, primary key
#  name        :string
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subcategory < ActiveRecord::Base
	# searchkick suggest: ["name"]
	belongs_to :category
	has_many :items
	has_many :wishes

	validates :name, :presence => true
	validates :category_id, :presence => true
end

