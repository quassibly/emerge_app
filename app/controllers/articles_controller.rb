class ArticlesController < ApplicationController
  def index
    @page = 'home'
    @articles = Article.where(published: true).where(deleted: false)
    @articles = @articles.sort_by &:updated_at
  end

  def show
    @page = 'grey'
    @article = Article.find(params[:id])
    if @article.category == "profile"
      redirect_to profile_path(@article)
    else @article.category == "opinion"
      redirect_to opinion_path(@article)
    end
  end

  def edit
    @page = 'grey'
    @article = Article.find(params[:id])
    if @article.category == "profile"
      redirect_to edit_profile_path(@article)
    else @article.category == "opinion"
      redirect_to edit_opinion_path(@article)
    end
  end

  def publish!
    @article = Article.find(params[:id])
    @article.published = true
    @article.published_at = DateTime.new
    @article.save
  end
end
