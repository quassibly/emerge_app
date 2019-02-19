class VideosController < ApplicationController
  before_action :set_category

  def index
    @page = 'index'
    @videos = Article.video.published_not_deleted
    @videos = Article.video.not_deleted if user_signed_in?
    if params[:tag].present?
      @videos = @videos.where(tag: params[:tag])
    end
    @videos = sort_by_priority
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
    @article.save
    redirect_to videos_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(video_params)
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
    @videos.each { |article| article.published_at = Time.now if article.published_at == nil }
    @videos.sort_by { |article| (Time.now - article.published_at) * article.priority }
  end

end
