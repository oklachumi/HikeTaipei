class AddWeatherUrlToTrail < ActiveRecord::Migration
  def change
    add_column :trails, :weather_url, :string
  end
end
