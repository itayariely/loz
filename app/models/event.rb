class Event < ActiveRecord::Base

  enum time: [ :ימות_השבוע, :סופש]
  enum mosa: [ :הכשרה, :לחניכים]

  has_many :events_circuls, :dependent => :destroy
  has_many :circuls, :through => :events_circuls
  accepts_nested_attributes_for :events_circuls, :allow_destroy => true

  # has_many :events_friends, :dependent => :destroy
  # has_many :friends, :through => :events_friends
  # accepts_nested_attributes_for :events_friends, :allow_destroy => true


def monther
  month = start_at.month
  he_month = ["", "ינואר", "פברואר", "מרץ", "אפריל", "מאי", "יוני", "יולי", "אוגוסט", "ספטמבר", "אוקטובר", "נובמבר", "דצמבר"]
  he_month[month]
end

validates :name, :days, :nights, :start_at, :end_at,  presence: true


  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

end
