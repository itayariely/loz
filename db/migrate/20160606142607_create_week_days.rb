class CreateWeekDays < ActiveRecord::Migration
  def change
    create_table :week_days do |t|
      t.integer :week_id
      t.string :name
      t.integer :wonted

      t.timestamps null: false
    end
  end
end
