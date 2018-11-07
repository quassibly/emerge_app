class ArticlesController < ApplicationController
  def index
    @page = 'home'
    @main = Article.find_by feature: "main"
    @feature1 = Article.find_by feature: "feature1"
    @feature2 = Article.find_by feature: "feature2"
    @articles = Article.where(published: true).where(deleted: false).where(feature: nil)
    @articles = @articles.sort_by &:updated_at
    @articles.reverse!
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

  private

  def article_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature)
  end

end
