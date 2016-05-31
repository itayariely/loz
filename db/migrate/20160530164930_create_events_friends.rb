class CreateEventsFriends < ActiveRecord::Migration
  def change
    create_table :events_friends do |t|
      t.integer :friend_id
      t.integer :event_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
