class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :warmup
      t.string :workout
      t.integer :weight
      t.string :injury

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
