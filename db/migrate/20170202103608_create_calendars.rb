class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :name
      t.string :color
      t.text :description

      t.timestamps null: false
    end
  end
end
