class AddLinkedinAndWebsiteToContributors < ActiveRecord::Migration[5.1]
  def change
    add_column :contributors, :linked_in, :string
  end
end
