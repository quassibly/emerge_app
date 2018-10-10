class CreateContributors < ActiveRecord::Migration[5.1]
  def change
    create_table :contributors do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.string :twitter
      t.string :instagram
      t.string :website

      t.timestamps
    end
  end
end
