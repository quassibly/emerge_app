class PodcastsController < ApplicationController
  # before_action :find_media
  skip_before_action :authenticate_user!, only: :emergepodcast
  before_action :set_category

  def emergepodcast
  end

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

  def sort_by_priority
    @podcasts.each { |article| article.published_at = Time.now if article.published_at == nil }
    @podcasts.reject { |article| article.priority == 5 }
    @podcasts.each { |article| article.age = Time.now - article.published_at }
    @podcasts.each do |article|
      case article.priority
      when 3
        article.age = article.age * 4
      when 4
        article.age = article.age * 16
      end
    end
    @podcasts.sort_by &:age
  end
end
