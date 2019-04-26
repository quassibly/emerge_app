class VideosController < ArticlesController
  before_action :set_category

  def index
    @page = 'index'
    include_category = @category
    include_priority = (1..4)
    @articles = filter_and_sort_articles(include_category, include_priority)
    if params[:tag].present?
      @articles = filter_by_tag
    end
    @pagy, @articles = pagy_array(@articles, items: 11)
  end

  def show
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def new
    @page = 'grey'
    @article = Article.new
  end

  def create
    @article = Article.new(video_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to videos_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(video_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to videos_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  private

  def set_category
    @category = 'video'
  end

  def video_params
    params.require(:article).permit(:headline, :subhead, :tag, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :url, :priority)
  end
end
