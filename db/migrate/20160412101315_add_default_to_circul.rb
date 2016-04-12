class AddDefaultToCircul < ActiveRecord::Migration
  def change
    change_column :circuls, :father_circul_id, :integer, :default => 0
  end
end
