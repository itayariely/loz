class ChangeEvent < ActiveRecord::Migration
  def change
    add_column   :events, :all_day, :boolean
    add_column   :events, :description, :text

  end
end
