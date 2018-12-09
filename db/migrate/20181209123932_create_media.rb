class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :type
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
