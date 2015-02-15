class AddAddressToTrucks < ActiveRecord::Migration
  def change
    add_column :trucks, :address, :string
  end
end
