json.array!(@landscapes) do |landscape|
  json.extract! landscape, :id, :title, :description, :photo
  json.url landscape_url(landscape, format: :json)
end
