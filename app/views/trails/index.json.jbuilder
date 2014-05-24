json.array!(@trails) do |trail|
  json.extract! trail, :id, :name, :introduction, :location, :lat, :lng
  json.landscapes trail.landscapes do |l|
    json.extract! l, :id, :title, :description
    json.photo l.photo.url
  end
end
