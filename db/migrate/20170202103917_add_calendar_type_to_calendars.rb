class AddCalendarTypeToCalendars < ActiveRecord::Migration
  def change
    add_column :calendars, :calendar_type, :integer
  end
end
