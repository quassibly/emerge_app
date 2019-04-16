class UpdatesController < ArticlesController
  before_action :set_category, :set_background

  def index
    @page = 'index'
    include_category = @category
    include_priority = (1..5)
    @articles = filter_and_sort_articles(include_category, include_priority)
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    @pagy, @articles = pagy_array(@articles, items: 5)
  end

  def show
    find_article
  end

  def new
    super
  end

  def create
    super
    redirect_to update_path(@article)
  end

  def edit
    find_article
  end

  def htmledit
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def update
    super
    redirect_to update_path(@article)
  end

  private

  def set_category
    @category = 'journal'
  end

  def set_background
    @page = 'grey'
  end

  def sort_recent!
    @articles.each { |article| article.published_at = Time.now if article.published_at.nil? }
    @articles = @articles.sort_by(&:published_at).reverse
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def aritcle_params
    super
  end
end
