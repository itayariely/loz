class CreateConflicts < ActiveRecord::Migration
  def change
    create_table :conflicts do |t|
      t.integer :first_event_id
      t.integer :second_event_id

      t.timestamps null: false
    end
  end
end
