module FriendsHelper
  def event_counter(all_parrent)
    events = EventsCircul.where(circul_id: all_parrent)
    a = []
    events.each do |event|
      a << event.event_id
    end
    a.flatten.uniq
  end

  def days_counter(all_parrent)
    events = Event.where(id: event_counter(all_parrent))
    a = []
    events.each do |event|
      a << event.days if event.days.present?
    end
    a
  end

  def nights_counter(all_parrent)
    events = Event.where(id: event_counter(all_parrent))
    a = []
    events.each do |event|
      a << event.nights if event.nights.present?
    end
    a
  end

  def indevidual_evets_counter_days(all_my_events)
    a = []
    all_my_events.each do |event|
      a << event.days if event.days.present?
    end
    a
  end

  def indevidual_evets_counter_nights(all_my_events)
    a = []
    all_my_events.each do |event|
      a << event.nights if event.nights.present?
    end
    a
  end
end
