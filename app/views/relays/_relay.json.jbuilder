json.extract! relay, :id, :name, :mac_address, :created_at, :updated_at
json.url relay_url(relay, format: :json)
