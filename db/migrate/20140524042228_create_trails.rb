class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.text :introduction
      t.string :location

      t.timestamps
    end
  end
end
