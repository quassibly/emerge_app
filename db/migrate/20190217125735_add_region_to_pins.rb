class AddRegionToPins < ActiveRecord::Migration[5.1]
  def change
    add_column :pins, :region, :string
  end
end
