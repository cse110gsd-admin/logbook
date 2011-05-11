class User < ActiveRecord::Base
  has_many :events
  has_many :workouts
  has_many :calendars
end
