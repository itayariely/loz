class Conflict < ActiveRecord::Base
  belongs_to :event, foreign_key: "first_event_id"
  belongs_to :event_sec, class_name: "Event", foreign_key: "second_event_id"
end
