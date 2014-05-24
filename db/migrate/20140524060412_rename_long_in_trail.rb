class RenameLongInTrail < ActiveRecord::Migration
  def change
    rename_column :trails, :long, :lng
  end
end
