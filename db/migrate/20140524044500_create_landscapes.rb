class CreateLandscapes < ActiveRecord::Migration
  def change
    create_table :landscapes do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.references :trail, index: true

      t.timestamps
    end
  end
end
