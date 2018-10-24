class CreatePhotographers < ActiveRecord::Migration[5.1]
  def change
    create_table :photographers do |t|
      t.references :contributor, foreign_key: true

      t.timestamps
    end
  end
end
