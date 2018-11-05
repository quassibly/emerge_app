class ArticlesController < ApplicationController
  def index
    @articles = Article.where(published: true)
  end

  def show
    @article = Article.find(params[:id])
    if @article.category == "profile"
      redirect_to profile_path(@article)
    else @article.category == "opinion"
      redirect_to opinion_path(@article)
    end
  end

  def edit
    @article = Article.find(params[:id])
    if @article.category == "profile"
      redirect_to edit_profile_path(@article)
    else @article.category == "opinion"
      redirect_to edit_opinion_path(@article)
    end
  end
end