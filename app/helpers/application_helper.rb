module ApplicationHelper
  def current_home?
    return true if request.path == "/"
    false
  end

  def current_category?(tab)
    return 'navbar-item navbar-link active' if request.path == "/#{tab}"
    return 'navbar-item navbar-link active' if request.path.match(/\D*/)[0] == "/#{tab}/"
    'navbar-item navbar-link'
  end

  def current_tag?(current_tag)
    return 'tagbar-link active' if params[:tag] == current_tag
    'tagbar-link'
  end

  def published?(current_article)
    return 'card draft' if current_article.published == false && user_signed_in?
    'card'
  end

  def updates_published?(current_article)
    return 'updates-card draft' if current_article.published == false && user_signed_in?
    'updates-card'
  end

  def media_published?(current_article)
    return 'card-media draft' if current_article.published == false && user_signed_in?
    'card-media'
  end

  def pin_published?(current_pin)
    return 'card-pin draft' if current_pin.published == false && user_signed_in?
    'card'
  end

  def show_view?
    return true if request.path =~ /^\/profiles\/\d+$/
    return true if request.path =~ /^\/opinions\/\d+$/
    false
  end

  def contributor_view?
    return true if request.path =~ /^\/contributors\/\d+$/
    false
  end

  def photographer_view?
    return true if request.path =~ /^\/photographers\/\d+$/
    false
  end

  def card_route(article)
    case article.category
    when 'podcast'
      return article.url
    when 'video'
      if article.url.include? 'youtube'
        return article_path(article)
      else
        return article.url
      end
    else
      return article_path(article)
    end
  end

  def podcast_img?(current_article)
    return 'mediacard-img' if current_article.category == 'podcast'
    'card-img'
  end

  def external_link(current_article)
    if current_article.url.present?
      if current_article.url.include? 'youtube'
        return '_self'
      else
        return '_blank'
      end
    else
      return '_self'
    end
  end

end
