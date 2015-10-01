# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  surname         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean          default(FALSE)
#  password_digest :text
#  latitude        :float
#  longitude       :float
#  address         :string
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :items
	has_many :bookmarks
	has_many :wishes

	acts_as_messageable
	def mailboxer_name
		self.username
	end

	def mailboxer_email(object)
		self.email
	end

	validates :email, :presence => true, :uniqueness => true
	validates :name, :presence => true
	validates :surname, :presence => true
	validates :password, :length => {:minimum => 8}

	geocoded_by :address

end
