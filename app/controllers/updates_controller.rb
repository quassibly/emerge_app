class UpdatesController < ApplicationController
  before_action :set_category, :set_background

  def index
    @page = 'index'
    @articles = Article.where(category: @category).where(deleted:false)
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    @articles = @articles.sort_by &:published_at
    @articles.reverse!
  end

  def show
    find_article
  end

  def mew
    @article = Article.new
  end

  def create
    @article = Article.new(update_params)
    @article.save
    redirect_to update_path(@article)
  end

  def edit
    find_article
  end

  def update
    find_article
    @article.update(update_params)
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
    @articles = @articles.sort_by &:published_at
    @articles.reverse!
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def update_params
    params.require(:article).permit(:headline, :subhead, :contributor_id, :body, :published, :deleted, :category, :seo_title, :meta)
  end
end
