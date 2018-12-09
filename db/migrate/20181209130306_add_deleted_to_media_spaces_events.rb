class AddDeletedToMediaSpacesEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :media, :deleted, :boolean, default: false
    add_column :spaces, :deleted, :boolean, default: false
    add_column :events, :deleted, :boolean, default: false
  end
end
