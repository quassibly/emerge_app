class OpinionsController < ApplicationController
  before_action :set_category

  def index         # GET /opinions
    @page = 'index'
    @articles = Article.insight.published_not_deleted
    @articles = Article.insight.not_deleted if user_signed_in?
    if params[:tag].present?
      @articles = @articles.where(tag: params[:tag])
    end
    @articles = sort_by_priority
  end

  def show          # GET /opinions/:id
    @page = 'grey'
    @article = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def new           # GET /opinions/new
    @page = 'grey'
    @article = Article.new
    @article = Article.new
  end

  def create        # POST /opinions
    @article = Article.new(opinion_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to opinion_path(@article)
  end

  def edit
    @page = 'grey'
    @article = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(opinion_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @article.published = !@article.published
      @article.published_at = Time.now
    end
    @article.save
    redirect_to opinion_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def delete
    @article = Article.find(params[:id])
    @article.deleted = true
  end

  private

  def opinion_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :priority)
  end

  def set_category
    @category = "insight"
  end

  def sort_by_priority
    @articles.each { |article| article.published_at = Time.now if article.published_at == nil }
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
    @articles.reject { |article| article.priority == 5 }
  end
end
