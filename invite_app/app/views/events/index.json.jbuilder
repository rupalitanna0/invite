json.array!(@events) do |event|
  json.extract! event, :id, :nameevent, :picsevent, :details, :location
  json.url event_url(event, format: :json)
end
