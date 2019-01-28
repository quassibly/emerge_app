class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :type
      t.string :category
      t.string :person
      t.string :headline
      t.string :seo_title
      t.string :subhead
      t.string :meta
      t.string :tag
      t.references :contributor, foreign_key: true
      t.references :photographer, foreign_key: true
      t.string :photo
      t.text :body
      t.boolean :published, default: false
      t.boolean :deleted, default: false

      t.timestamps
    end
  end
end
