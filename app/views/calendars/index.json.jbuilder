json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :name, :color, :description, :key, :label
  json.url calendar_url(calendar, format: :json)
end
