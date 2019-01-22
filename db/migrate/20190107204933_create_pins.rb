class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :name
      t.string :category
      t.string :tag
      t.string :classification
      t.string :event_type
      t.string :location
      t.string :phone
      t.string :photo
      t.datetime :date
      t.datetime :end_date
      t.string :address
      t.string :url
      t.text :description
      t.boolean :published, default: false
      t.boolean :deleted, default: false
      t.datetime :published_at

      t.timestamps
    end
  end
end
