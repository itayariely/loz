json.array!(@conflicts) do |conflict|
  json.extract! conflict, :id, :event, :event_sec
  # json.url circul_url(circul, format: :json)
end
