class AddMosaToEvent < ActiveRecord::Migration
  def change
    add_column :events, :mosa, :integer
  end
end
