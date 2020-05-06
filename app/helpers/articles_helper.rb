module ArticlesHelper

  def filter_and_sort_articles(include_category, include_priority)
    #logged in or logged out
    articles = user_signed_in? ? Article.not_deleted : Article.published_not_deleted
    #filter by allowed category/ies
    #filter by allowed priority
    priority = include_priority
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

  def process_body(article_body)
    body = article_body
        .gsub(/&lt;/, '<')
        .gsub(/&gt;/, '>')
        #.gsub(/<pre><iframe/, '<iframe class="video"')
        #.gsub(/<\/pre>/, '')

    body = sanitize body,
      tags: %w(strong em b i p code pre tt samp kbd var sub
      sup dfn cite big small address hr div span h1 h2 h3 h4 h5 h6 ul ol li dl dt dd abbr
      acronym a img blockquote del ins video source figcaption figure br iframe),
      attributes: %w(href src width height alt cite datetime title class name xml:lang abbr type autoplay loop data-trix-attachment data-trix-content-type)

    return body
  end
end
