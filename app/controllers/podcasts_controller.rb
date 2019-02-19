class PodcastsController < ApplicationController
  # before_action :find_media
  before_action :set_category

  def index
    @page = 'index'
    @podcasts = Article.podcast.published_not_deleted
    @podcasts = Article.podcast.not_deleted if user_signed_in?
    if params[:tag].present?
      @podcasts = @podcasts.where(tag: params[:tag])
    end
    @podcasts = sort_by_priority
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
    redirect_to podcasts_path
  end

  private

  def set_category
    @category = 'podcast'
  end

  def podcast_params
    params.require(:article).permit(:headline, :subhead, :tag, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :url, :priority)
  end

  def sort_by_priority
    @podcasts.each { |article| article.published_at = Time.now if article.published_at == nil }
    @podcasts.sort_by { |article| (Time.now - article.published_at) * article.priority}
  end
end
