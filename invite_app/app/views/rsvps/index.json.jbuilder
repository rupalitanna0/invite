json.array!(@rsvps) do |rsvp|
  json.extract! rsvp, :id, :user, :event, :coming
  json.url rsvp_url(rsvp, format: :json)
end
