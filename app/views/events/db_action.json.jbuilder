# json.extract! @event, :id, :name, :start_at, :end_at, :note, :days, :nights, :place, :status, :color, :created_at, :updated_at
# :type => mode,
#            :sid => id.to_i,
#            :tid => tid.to_i,
# json.array!(events) do |event|
#   json.id event.id
#   json.text event.text
#   json.start_date event.start_date.strftime('%Y-%m-%d %H:%M')
#   json.end_date event.end_date.strftime('%Y-%m-%d %H:%M')
#   json.event_pid event.event_pid
#   json.event_length event.event_length
#   json.rec_pattern event.rec_pattern
#   json.rec_type event.rec_type
# end
