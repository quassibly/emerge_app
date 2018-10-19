module ApplicationHelper
  def current_class?(test_path)
    return 'navbar-item navbar-link-active' if request.path == test_path
    'navbar-item navbar-link'
  end
end
