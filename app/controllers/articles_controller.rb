  class ArticlesController < ApplicationController
  def index
    @page = 'home'
    @articles = Article.published_not_deleted.not_update
    @articles = sort_by_priority
    @main = @articles[0]
    @feature1 = @articles[1]
    @feature2 = @articles[2]
    @articles = @articles.drop(3)
    @videos = Article.where(published: true).where(deleted: false).where(category: 'video')
    @podcasts = Article.where(published: true).where(deleted: false).where(category: 'podcast')
    @events = Pin.where(published: true).where(deleted: false).where(category: 'event')
    @spaces = Pin.where(published: true).where(deleted: false).where(category: 'space')
  end

  def show
    @page = 'grey'
    @article = Article.find(params[:id])
    case @article.category
    when 'journal'
      redirect_to update_path(@article)
    when 'people'
      redirect_to profile_path(@article)
    when 'insight'
      redirect_to opinion_path(@article)
    when 'video'
      redirect_to video_path(@article)
    when 'podcast'
      redirect_to podcast_path(@article)
    end
  end

  def new
    @article = Article.new
    @article.category = @category
  end

  def edit
    @page = 'grey'
    @article = Article.find(params[:id])
    if @article.category == "people"
      redirect_to edit_profile_path(@article)
    elsif @article.category == "insight"
      redirect_to edit_opinion_path(@article)
    elsif @article.category == "journal"
      redirect_to edit_update_path(@article)
    elsif @article.category == "video"
      redirect_to edit_video_path(@article)
    elsif @article.category == "podcast"
      redirect_to edit_podcast_path(@article)
    end
  end

  def update
    find_article
    @article.update(update_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
  end

  def create
    @article = Article.new(update_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
  end

  def publish!
    @article = Article.find(params[:id])
    @article.published = !@article.published
    @article.published_at = Time.new
    @article.save
    if @article.category == "people"
      redirect_to profiles_path
    elsif @article.category == "insight"
      redirect_to opinions_path
    elsif @article.category == "journal"
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
    # if @article.category == "people"
    #   redirect_to profiles_path
    # elsif @article.category == "insight"
    #   redirect_to opinions_path
    # elsif @article.category == "journal"
    #   redirect_to updates_path
    # elsif @article.category == "video"
    #   redirect_to videos_path
    # elsif @article.category == "podcast"
    #   redirect_to podcasts_path
    # end
  end

  private

  def article_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :priority)
  end

  def sort_by_priority
    @articles.each { |article| article.published_at = Time.now if article.published_at == nil }
    @articles.reject { |article| article.priority == 5 }
    @articles.each { |article| article.age = Time.now - article.published_at }
    @articles.each do |article|
      case article.priority
      when 3
        article.age = article.age * 4
      when 4
        article.age = article.age * 16
      end
    end
    @articles.sort_by &:age
  end

end
