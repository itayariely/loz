class CreateCirculWeekRelations < ActiveRecord::Migration
  def change
    create_table :circul_week_relations do |t|
      t.integer :circul_id
      t.integer :week_id

      t.timestamps null: false
    end
  end
end
