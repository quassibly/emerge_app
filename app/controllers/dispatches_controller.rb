class DispatchesController < ArticlesController
  before_action :set_category

  def index         # GET /dispatches
    @page = 'index'
    include_category = @category
    include_priority = (1..4)
    @articles = filter_and_sort_articles(include_category, include_priority)
    if params[:tag].present?
      @articles = filter_by_tag
    end
    @pagy, @articles = pagy_array(@articles, item: 11)
  end

  def show          # GET /dispatches/:id
    @page = 'grey'
    @article = Article.find(params[:id])
    include_priority = (1..4)

    recommended_dispatches = filter_and_sort_articles(@category, include_priority).reject{ |article| article == @article }.first(2)
    recommended_profiles = filter_and_sort_articles('people', include_priority).first(2)

    @recommended = recommended_dispatches + recommended_profiles
  end

  def new           # GET /dispatches/new
    @page = 'grey'
    @article = Article.new
  end

  def create        # POST /dispatches
    @article = Article.new(dispatch_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to dispatch_path(@article)
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
    @article = Article.find(params[:id])
    @article.update(opinion_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to dispatch_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def delete
    @article = Article.find(params[:id])
    @article.deleted = true
  end

  private

  def dispatch_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :priority)
  end

  def set_category
    @category = 'dispatch'
    @controller = 'dispatches'
  end
end
