class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
