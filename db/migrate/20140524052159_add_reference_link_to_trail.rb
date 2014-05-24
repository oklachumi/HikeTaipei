class AddReferenceLinkToTrail < ActiveRecord::Migration
  def change
    add_column :trails, :reference_link, :string
  end
end
