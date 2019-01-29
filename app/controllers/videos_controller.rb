class VideosController < ApplicationController
  before_action :set_category

  def index
    @page = 'index'
    @videos = Article.where(category: 'video').where(deleted: false)
    if params[:tag].present?
      @videos = @videos.where(tag: params[:tag])
    end
    @videos = @videos.sort_by &:updated_at
    @videos.reverse!
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
    @pin = Article.new(video_params)
    @pin.save
    redirect_to update_path(@pin)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(video_params)
    redirect_to videos_path
  end

  private

  def set_category
    @category = 'video'
  end

  def video_params
    params.require(:article).permit(:headline, :subhead, :tag, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :url)
  end
end