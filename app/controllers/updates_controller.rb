class UpdatesController < ArticlesController
  before_action :set_category, :set_background

  def index
    @page = 'index'
    @articles = Article.journal.published_not_deleted
    @articles = Article.journal.not_deleted if user_signed_in?
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    sort_recent!
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
    @articles = @articles.sort_by &:published_at
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def aritcle_params
    super
  end
end
