class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :category
      t.string :person
      t.string :headline
      t.string :subhead
      t.string :tag
      t.references :contributor, foreign_key: true
      t.string :photo
      t.text :body
      t.boolean :deleted

      t.timestamps
    end
  end
end
