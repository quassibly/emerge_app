class PodcastsController < ApplicationController
  # before_action :find_media
  before_action :set_category

  def index
    @page = 'index'
    @podcasts = Article.where(category: 'podcast').where(deleted: false)
    if params[:tag].present?
      @podcasts = @podcasts.where(tag: params[:id])
    end
    @podcasts = @podcasts.sort_by &:updated_at
    @podcasts.reverse!
  end

  def show
    @page = 'grey'
    @article = Article.find(params[:id])
  end

  def new
    @page = 'grey'
    @article = Article.new
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
    params.require(:article).permit(:headline, :subhead, :tag, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :url)
  end
end
