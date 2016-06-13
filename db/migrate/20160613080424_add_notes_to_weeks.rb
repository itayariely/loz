class AddNotesToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :notes, :text
  end
end
