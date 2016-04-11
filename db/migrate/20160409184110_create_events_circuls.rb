class CreateEventsCirculs < ActiveRecord::Migration
  def change
    create_table :events_circuls do |t|
      t.integer :event_id
      t.integer :circul_id
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
