# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bookmark < ActiveRecord::Base
	belongs_to :user
	belongs_to :item
end
