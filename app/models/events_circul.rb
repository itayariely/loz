class EventsCircul < ActiveRecord::Base
  belongs_to :circul
  belongs_to :event
end
