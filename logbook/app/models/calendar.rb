# == Schema Information
# Schema version: 20110510070410
#
# Table name: calendars
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  day        :integer
#  month      :integer
#  year       :integer
#  event_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Calendar < ActiveRecord::Base
  belongs_to :user
end
