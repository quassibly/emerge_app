class AddGatheringArticle < ActiveRecord::Migration[5.1]
  def up
    Article.create!(category: 'gathering', headline: 'Gathering 2021', slug: 'gathering_2021', body: "")
  end

  def down
    Article.find_by(slug: 'gathering_2021').destroy!
  end
end
