class AddDaysToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :day_a, :integer, default: 0
    add_column :weeks, :day_b, :integer, default: 0
    add_column :weeks, :day_c, :integer, default: 0
    add_column :weeks, :day_d, :integer, default: 0
    add_column :weeks, :day_e, :integer, default: 0
    add_column :weeks, :day_f, :integer, default: 0
    add_column :weeks, :day_s, :integer, default: 0
  end
end
