class PodcastsController < ApplicationController
  # before_action :find_media
  before_action :set_category

  def index
    @page = 'index'
    @podcasts = Article.where(category: 'podcast', published: true, deleted: false)
    @podcasts = Article.where(category: 'podcast', deleted: false) if user_signed_in?
    if params[:tag].present?
      @podcasts = @podcasts.where(tag: params[:tag])
    end
    @podcasts = @podcasts.sort_by &:updated_at
    @podcasts.reverse!
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
end
