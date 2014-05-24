class AddGeoToTrail < ActiveRecord::Migration
  def change
    add_column :trails, :lat, :float
    add_column :trails, :long, :float
  end
end
