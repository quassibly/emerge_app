class AddLatitudeLongitudetoPins < ActiveRecord::Migration[5.1]
  def change
    add_column :pins, :latitude, :float
    add_column :pins, :longitude, :float
  end
end
