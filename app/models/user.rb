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
<<<<<<< HEAD
#  address1        :string
#  suburb          :string
#  city            :string
#  country         :string
=======
>>>>>>> 4fa14c2cdb98c5768b4390ee3939ca689793fb50
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

	# Assuming country_select is used with User attribute `country_code`
  	# This will attempt to translate the country name and use the default
  	# (usually English) name if no translation is available
	def country_name
		country = Country[country_code]
		country.translations[I18n.locale.to_s] || country.name
	end

end
