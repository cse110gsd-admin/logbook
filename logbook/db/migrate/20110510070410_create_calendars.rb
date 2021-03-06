class CreateCalendars < ActiveRecord::Migration
  def self.up
    create_table :calendars do |t|
      t.integer :user_id
      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :calendars
  end
end
