class VideosController < ArticlesController
  before_action :set_category

  def index
    @page = 'index'
    @articles = Article.article.published_not_deleted
    @articles = Article.article.not_deleted if user_signed_in?
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    sort_by_priority
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

  def sort_by_priority
    super
  end

  def reject_by_priority
    @articles = @articles.reject { |article| article.priority == 5 }
  end
end
