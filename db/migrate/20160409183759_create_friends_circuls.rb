class CreateFriendsCirculs < ActiveRecord::Migration
  def change
    create_table :friends_circuls do |t|
      t.integer :friend_id
      t.integer :circul_id
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
