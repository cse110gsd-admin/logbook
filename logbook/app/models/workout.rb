# == Schema Information
# Schema version: 20110510070410
#
# Table name: workouts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_by :integer
#  details    :text
#  created_at :datetime
#  updated_at :datetime
#

class Workout < ActiveRecord::Base
  belongs_to  :user
end
