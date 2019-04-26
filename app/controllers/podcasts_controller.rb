class PodcastsController < ArticlesController
  # before_action :find_media
  skip_before_action :authenticate_user!, only: :emergepodcast
  before_action :set_category

  def emergepodcast
    @page = 'index'
    include_category = @category
    include_priority = (1..4)
    @articles = filter_and_sort_articles(include_category, include_priority)
    @articles = select_emergepodcast(@articles)
  end

  def index
    @page = 'index'
    include_category = @category
    include_priority = (1..4)
    @articles = filter_and_sort_articles(include_category, include_priority)
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    @articles = user_signed_in? ? @articles : not_emergepodcast(@articles)
    @pagy, @articles = pagy_array(@articles, items: 11)
  end

  def show
    @page = 'grey'
  end

  def new
    @page = 'grey'
    @article = Article.new
  end

  def create
    @article = Article.new(podcast_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    if @article.save
      redirect_to podcasts_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(podcast_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to podcasts_path
  end

  private

  def set_category
    @category = 'podcast'
  end

  def podcast_params
    params.require(:article).permit(:headline, :subhead, :tag, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :url, :priority)
  end

  def select_emergepodcast(articles)
    articles.select { |article| article.meta.include? 'emergepodcast' unless article.meta.nil?}
  end

  def not_emergepodcast(articles)
    articles.delete_if { |article| article.meta.include? 'emergepodcast' unless article.meta.nil?}
  end
end
