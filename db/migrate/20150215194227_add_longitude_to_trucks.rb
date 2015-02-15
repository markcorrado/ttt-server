class AddLongitudeToTrucks < ActiveRecord::Migration
  def change
    add_column :trucks, :longitude, :string
  end
end
