class AddIndexesToRelationsTables < ActiveRecord::Migration
  def change
    add_index :events_circuls, [:event_id, :circul_id]
    add_index :friends_circuls, [:friend_id, :circul_id]
  end
end
