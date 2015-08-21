json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastname, :age, :addresss, :state, :gender, :cellno, :email
  json.url user_url(user, format: :json)
end
