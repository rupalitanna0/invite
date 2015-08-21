json.array!(@photogalleries) do |photogallery|
  json.extract! photogallery, :id, :topic, :pics, :details
  json.url photogallery_url(photogallery, format: :json)
end
