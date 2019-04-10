class ProfilesController < ArticlesController
  before_action :set_category

  def index         # GET /profiles
    @page = 'index'
    @articles = Article.people.published_not_deleted
    @articles = Article.people.not_deleted if user_signed_in?
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    @articles = sort_by_priority(@articles)
    @articles = reject_by_priority(@articles)
  end

  def show          # GET /profiles/:id
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def new           # GET /profiles/new
    @page = 'grey'
    super
  end

  def create        # POST /profiles
    @article = Article.new(article_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to profile_path(@article)
  end

  def edit
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def htmledit
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def update
    super
    redirect_to profile_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def delete
    @article = Article.find(params[:id])
    @article.deleted = true
    @article.save
  end

  private

  def find_article
    super
  end

  def article_params
    super
  end

  def set_category
    @category = "people"
    @controller = 'profiles'
  end

  def reject_by_priority(articles)
    articles = articles.reject { |article| article.priority == 5 } unless user_signed_in?
  end

end
