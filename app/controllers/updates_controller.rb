class UpdatesController < ApplicationController
  before_action :set_category, :set_background

  def index
    @page = 'index'
    @articles = Article.update_cat.published_not_deleted
    @articles = Article.update_cat.not_deleted if user_signed_in?
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    sort_recent!
  end

  def show
    find_article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(update_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to update_path(@article)
  end

  def edit
    find_article
  end

  def update
    find_article
    @article.update(update_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to update_path(@article)
  end

  private

  def set_category
    @category = 'update'
  end

  def set_background
    @page = 'grey'
  end

  def sort_recent!
    @articles.each { |article| article.published_at = Time.now if article.published.nil? }
    @articles = @articles.sort_by &:published_at
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def update_params
    params.require(:article).permit(:headline, :subhead, :contributor_id, :body, :published, :deleted, :category, :seo_title, :meta)
  end
end
