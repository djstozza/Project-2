# == Schema Information
#
# Table name: sales
#
#  id           :integer          not null, primary key
#  buyer_email  :string
#  seller_email :string
#  guid         :string
#  book_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Sale < ActiveRecord::Base
	before_create :populate_guid
	has_many :items

	private

	def populate_guid
		self.guid = SecureRandom.uuid();
	end
end
