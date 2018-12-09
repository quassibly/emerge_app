class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.string :event_type
      t.string :location
      t.datetime :date
      t.datetime :end_date
      t.string :address
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
