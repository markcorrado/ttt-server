class AddLatitudeToTrucks < ActiveRecord::Migration
  def change
    add_column :trucks, :latitude, :string
  end
end
