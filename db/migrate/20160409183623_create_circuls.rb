class CreateCirculs < ActiveRecord::Migration
  def change
    create_table :circuls do |t|
      t.string :name
      t.integer :father_circul_id, default: 0

      t.timestamps null: false
    end
  end
end
