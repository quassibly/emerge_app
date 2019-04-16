module ArticlesHelper

  def filter_and_sort_articles(include_category, include_priority)
    #logged in or logged out
    articles = user_signed_in? ? Article.not_deleted : Article.published_not_deleted
    #filter by allowed category/ies
    #filter by allowed priority
    priority = user_signed_in? ? (1..5) : include_priority
    articles = articles.where(category: include_category, priority: priority)
    #calc 'age' w/ priority
    #sort by age
    sort_by_priority(articles)
  end

  def sort_by_priority(articles)
    articles.each { |article| article.published_at = Time.now if article.published_at == nil }
    articles.each { |article| article.age = Time.now - article.published_at }
    articles.each do |article|
      case article.priority
      when 3
        article.age = article.age * 4
      when 4
        article.age = article.age * 16
      when 5
        article.age = article.age * 32
      end
    end
    articles.sort_by &:age
  end
end
