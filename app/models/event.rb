class Event < ActiveRecord::Base
  has_many :events_circuls
  has_many :circuls, :through => :events_circuls
  accepts_nested_attributes_for :events_circuls, :allow_destroy => true

def start_time
  start_date
end
end
