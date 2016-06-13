class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.string :name
      t.integer :frequency
      t.integer :houers
      t.integer :tomezon

      t.timestamps null: false
    end
  end
end
