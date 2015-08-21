json.array!(@guests) do |guest|
  json.extract! guest, :id, :name, :middlename, :lastname, :age, :addresss, :state, :gender, :cellno, :email
  json.url guest_url(guest, format: :json)
end
