class AddColorToCircul < ActiveRecord::Migration
  def change
    add_column :circuls, :color, :string
  end
end
