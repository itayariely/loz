json.array!(@friends) do |friend|
  json.extract! friend, :id, :name, :lname, :phone, :email, :birth_date
  json.url friend_url(friend, format: :json)
end
