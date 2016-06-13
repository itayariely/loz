class CreateFriendWeekRelations < ActiveRecord::Migration
  def change
    create_table :friend_week_relations do |t|
      t.integer :friend_id
      t.integer :week_id

      t.timestamps null: false
    end
  end
end
