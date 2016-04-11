class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :note
      t.integer :days
      t.integer :nights
      t.string :place
      t.integer :status, default: 0
      t.string :color

      t.timestamps null: false
    end
  end
end
