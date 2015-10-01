# == Schema Information
#
# Table name: intermediaries
#
#  id         :integer          not null, primary key
#  name       :string
#  longitude  :float
#  latitude   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer
#  address    :string
#

class Intermediary < ActiveRecord::Base

	reverse_geocoded_by :latitude, :longitude
	
end
