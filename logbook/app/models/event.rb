# == Schema Information
# Schema version: 20110510070410
#
# Table name: events
#
#  id         :integer         not null, primary key
#  warmup     :string(255)
#  workout    :string(255)
#  weight     :integer
#  injury     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
  belongs_to :user
end
