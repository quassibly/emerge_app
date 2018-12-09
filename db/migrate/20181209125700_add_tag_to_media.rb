class AddTagToMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :media, :tag, :string
  end
end
