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

class Item < ActiveRecord::Base
	searchkick text_start: [:name, :description], suggest: ["name"]
	# def search_data 
	# 	{
	# 		name: name,
	# 		description: description
	# 	}
	# end	

	belongs_to :user
	belongs_to :subcategory
	has_one :bookmark

	# validates :name, :presence => true
	# validates :price, :presence => true
	# validates :description, :presence => true
	# validates :category_id, :presence => true
	# validates :subcategory_id,  :presence => true
	
	
end
