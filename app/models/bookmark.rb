# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  active     :boolean          default(TRUE)
#  created_at :datetime
#  updated_at :datetime
#

class Bookmark < ActiveRecord::Base
	belongs_to :user
	belongs_to :item

end
