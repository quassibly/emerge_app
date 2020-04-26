class ProfilesController < ArticlesController
  before_action :set_category

  def index         # GET /profiles
    @page = 'index'
    include_category = @category
    include_priority = (1..4)
    @articles = filter_and_sort_articles(include_category, include_priority)
    if params[:tag].present?
      @articles = filter_by_tag
    end
    @pagy, @articles = pagy_array(@articles, item: 11)
  end

  def show          # GET /profiles/:id
    @page = 'grey'
    @article = Article.find(params[:id])
    include_priority = (1..4)

    recommended_profiles = filter_and_sort_articles(@category, include_priority).first(2)
    recommended_all = filter_and_sort_articles(
        ['insight', 'event', 'space'],
        include_priority
    ).first(2)

    @recommended = recommended_profiles + recommended_all
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
    @category = 'people'
    @controller = 'profiles'
  end

  def reject_by_priority(articles)
    articles = articles.reject { |article| article.priority == 5 } unless user_signed_in?
  end

end
