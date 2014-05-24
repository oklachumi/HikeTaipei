json.array!(@trails) do |trail|
  json.extract! trail, :id, :name, :introduction, :location
  json.url trail_url(trail, format: :json)
end
