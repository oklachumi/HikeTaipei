json.extract! @trail, :id, :name, :introduction, :location, :created_at, :updated_at
json.landscapes @trail.landscapes do |l|
  json.extract! l, :id, :title, :description
  json.photo l.photo.url
end
