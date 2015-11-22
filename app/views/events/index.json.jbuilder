json.array!(@events) do |event|
  json.extract! event, :id, :name, :decription, :address, :latitude, :longitude
  json.url event_url(event, format: :json)
end
