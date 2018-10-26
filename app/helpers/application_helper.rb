module ApplicationHelper
  def current_home?
    return true if request.path == "/"
    false
  end

  def current_category?(test_path)
    return 'navbar-item navbar-link active' if request.path == test_path
    'navbar-item navbar-link'
  end

  def current_tag?(current_tag)
    return 'tagbar-link active' if params[:tag] == current_tag
    'tagbar-link'
  end

  def published?(current_article)
    return 'card draft' if current_article.published == false
    'card'
  end
end
