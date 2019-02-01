class ArticlesController < ApplicationController
  def index
    @page = 'home'
    @main = Article.find_by feature: "main"
    @feature1 = Article.find_by feature: "feature1"
    @feature2 = Article.find_by feature: "feature2"
    @articles = Article.where(published: true).where(deleted: false).where(feature: "")
    @articles = @articles.sort_by &:published_at
    @articles.reverse!
    @articles = @articles
    @videos = Article.where(published: true).where(deleted: false).where(category: 'video')
    @podcasts = Article.where(published: true).where(deleted: false).where(category: 'podcast')
    @events = Pin.where(published: true).where(deleted: false).where(category: 'event')
    @spaces = Pin.where(published: true).where(deleted: false).where(category: 'space')
  end

  def show
    @page = 'grey'
    @article = Article.find(params[:id])
    if @article.category == "profile"
      redirect_to profile_path(@article)
    elsif @article.category == "opinion"
      redirect_to opinion_path(@article)
    elsif @article.category.downcase == 'video'
      redirect_to video_path(@article)
    elsif @article.category.downcase == 'podcast'
      redirect_to podcast_path(@article)
    end
  end

  def edit
    @page = 'grey'
    @article = Article.find(params[:id])
    if @article.category == "profile"
      redirect_to edit_profile_path(@article)
    elsif @article.category == "opinion"
      redirect_to edit_opinion_path(@article)
    elsif @article.category == "update"
      redirect_to edit_update_path(@article)
    elsif @article.category == "video"
      redirect_to edit_video_path(@article)
    elsif @article.category == "podcast"
      redirect_to edit_podcast_path(@article)
    end
  end

  def publish!
    @article = Article.find(params[:id])
    @article.published = !@article.published
    @article.published_at = Time.new
    @article.save
    if @article.category == "profile"
      redirect_to profiles_path
    elsif @article.category == "opinion"
      redirect_to opinions_path
    elsif @article.category == "update"
      redirect_to updates_path
    elsif @article.category == "video"
      redirect_to videos_path
    elsif @article.category == "podcast"
      redirect_to podcasts_path
    end
  end

  def delete
    @article = Article.find(params[:id])
    @article.deleted = !@article.deleted
    @article.save
    if @article.category == "profile"
      redirect_to profiles_path
    elsif @article.category == "opinion"
      redirect_to opinions_path
    elsif @article.category == "update"
      redirect_to updates_path
    elsif @article.category == "video"
      redirect_to videos_path
    elsif @article.category == "podcast"
      redirect_to podcasts_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature)
  end

end
