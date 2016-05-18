class Event < ActiveRecord::Base

  enum time: [ :ימות_השבוע, :סופש]
  enum mosa: [ :הכשרה, :לחניכים]

  has_many :events_circuls, :dependent => :destroy
  has_many :circuls, :through => :events_circuls
  accepts_nested_attributes_for :events_circuls, :allow_destroy => true

def monther
  month = start_at.month
  he_month = ["", "ינואר", "פברואר", "מרץ", "אפריל", "מאי", "יוני", "יולי", "אוגוסט", "ספטמבר", "אוקטובר", "נובמבר", "דצמבר"]
  he_month[month]
end

validates :name, :days, :nights, :start_at, :end_at,  presence: true
 # def title
#   name
# end
#
#   scope :between, ->(from, to) {
#   where(starts_at: (Event.format_date(from)..Event.format_date(to)))
# }
#
#   # need to override the json view to return what full_calendar is expecting.
#   # http://arshaw.com/fullcalendar/docs/event_data/Event_Object/
#   def as_json(options = {})
#     {
#       :id => self.id,
#       :title => self,
#       :description => self.description || "",
#       :start => starts_at.rfc822,
#       :end => ends_at.rfc822,
#       :allDay => self.all_day,
#       :recurring => false,
#       :url => Rails.application.routes.url_helpers.event_path(id),
#       #:color => "red"
#     }
#
#   end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

end
