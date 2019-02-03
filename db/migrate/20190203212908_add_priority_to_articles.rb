class AddPriorityToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :priority, :integer, default: 3
  end
end
