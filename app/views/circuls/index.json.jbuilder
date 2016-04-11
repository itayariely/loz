json.array!(@circuls) do |circul|
  json.extract! circul, :id, :name, :father_circul_id
  json.url circul_url(circul, format: :json)
end
