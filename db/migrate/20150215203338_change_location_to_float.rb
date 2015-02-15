class ChangeLocationToFloat < ActiveRecord::Migration
  def up
    change_column :trucks, :latitude, :float
    change_column :trucks, :longitude, :float
  end

  def down
    change_column :trucks, :latitude, :float
    change_column :trucks, :longitude, :float
  end
end