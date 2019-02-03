class AddAgeToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :age, :integer
  end
end
