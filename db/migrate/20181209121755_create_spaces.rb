class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :category
      t.string :location
      t.string :address
      t.string :phone
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
