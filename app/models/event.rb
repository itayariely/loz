class Event < ActiveRecord::Base

  enum time: [ :ימות_השבוע, :סופש]
  enum mosa: [ :הכשרה, :לחניכים]
  enum status: [ :draft, :approved]

  has_many :events_circuls, :dependent => :destroy
  has_many :circuls, :through => :events_circuls
  accepts_nested_attributes_for :events_circuls, :allow_destroy => true

  has_many :events_friends, :dependent => :destroy
  has_many :friends, :through => :events_friends
  accepts_nested_attributes_for :events_friends, :allow_destroy => true
  belongs_to :calendar
  belongs_to :parent, class_name: "Event", foreign_key: "parent_id"

  # has_many :sub_tasks, :foreign_key => 'parent', class_name: "Task", :dependent => :destroy
  # belongs_to :seco, :foreign_key => 'parent', class_name: "Task"
  has_many :conflicts, foreign_key: "first_event_id"
  accepts_nested_attributes_for :conflicts, :allow_destroy => true
  has_many :conflicts_sec, class_name: "Conflict", foreign_key: "second_event_id"
  accepts_nested_attributes_for :conflicts_sec, :allow_destroy => true

  after_save :get_parent_dependencies
  after_save :kill_all_conflicts
  after_save :check_for_conflicts
  after_save :change_color

  def section
    calendar_id.present? ? calendar_id : Calendar.order_for.last.id
  end


def monther
  month = start_at.month
  he_month = ["", "ינואר", "פברואר", "מרץ", "אפריל", "מאי", "יוני", "יולי", "אוגוסט", "ספטמבר", "אוקטובר", "נובמבר", "דצמבר"]
  he_month[month]
end

validates :name, :start_at, :end_at,  presence: true
validates :days, :nights, presence: true, if: :it_is_request

def it_is_request
  Calendar.find(self.calendar_id).order_for?
end


  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

  def approval!(event)
    d = event
    d.approved!
  end

  def drafting!(event)
    d = event
    d.draft!
  end

  def get_parent_dependencies
    if self.parent_id.present?
      if self.parent.draft?
        self.circuls << self.parent.circuls
        self.parent.approved!
        # self.update_columns name: "#{name} (#{parent.name})"
      end
    end
  end

  def kill_all_conflicts
    self.conflicts.each do |conflict|
      if conflict.event_sec.conflicts.count + conflict.event_sec.conflicts_sec.count <= 1
        conflict.event_sec.update_columns color: ""
      end
    end
    self.conflicts_sec.each do |conflict|
      if conflict.event.conflicts.count + conflict.event.conflicts_sec.count <=1
        conflict.event.update_columns color: ""
      end
    end
    self.conflicts.destroy_all

    self.conflicts_sec.destroy_all
    self.update_columns color: ""
  end

  def check_for_conflicts
    if self.calendar.calendar?
      circuls_arr = self.circuls.map &:id
      Event.where.not("end_at < ?", self.start_at).where.not("start_at > ?", self.end_at).where.not(id:self.id).each do |event|
        # self.update_columns name: "#{name} (#{event.id})"
        sec_circuls_arr = event.circuls.map &:id
        confilict = circuls_arr & sec_circuls_arr
        if not confilict.empty?
          Conflict.create(first_event_id:self.id, second_event_id:event.id)
        end
      end
    end
  end

  def change_color
    event = Event.find(self.id)
    if event.conflicts.any?
        event.update_columns color: "#ff4c4c"
        event.conflicts.each do |conflict|
          conflict.event_sec.update_columns color: "#ff4c4c"
        end
    end
    if event.conflicts_sec.any?
      event.conflicts_sec.any.each do |conflict|
        conflict.event.update_columns color: "#ff4c4c"
      end
    end
  end
end
