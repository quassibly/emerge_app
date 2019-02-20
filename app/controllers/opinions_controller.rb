class OpinionsController < ApplicationController
  before_action :set_category

  def index         # GET /opinions
    @page = 'index'
    @opinions = Article.opinion.published_not_deleted
    @opinions = Article.opinion.not_deleted if user_signed_in?
    if params[:tag].present?
      @opinions = @opinions.where(tag: params[:tag])
    end
    @opinions = sort_by_priority
  end

  def show          # GET /opinions/:id
    @page = 'grey'
    @opinion = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def new           # GET /opinions/new
    @page = 'grey'
    @opinion = Article.new
    @article = Article.new
  end

  def create        # POST /opinions
    @opinion = Article.new(opinion_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @opinion.published = !@opinion.published
      @opinion.published_at = Time.now
    end
    @opinion.save
    redirect_to opinion_path(@opinion)
  end

  def edit
    @page = 'grey'
    @opinion = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def update
    @opinion = Article.find(params[:id])
    @opinion.update(opinion_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @opinion.published = !@opinion.published
      @opinion.published_at = Time.now
    end
    @opinion.save
    redirect_to opinion_path(@opinion)
  end

  def destroy
    @opinion = Article.find(params[:id])
    @opinion.destroy
  end

  def delete
    @opinion = Article.find(params[:id])
    @opinion.deleted = true
  end

  private

  def opinion_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta, :feature, :priority)
  end

  def set_category
    @category = "opinions"
  end

  def sort_by_priority
    @opinions.each { |article| article.published_at = Time.now if article.published_at == nil }
    @opinions.each { |article| article.age = Time.now - article.published_at }
    @opinions.each do |article|
      case article.priority
      when 3
        article.age = article.age * 4
      when 4
        article.age = article.age * 16
      end
    end
    @opinions.sort_by &:age
    @opinions.reject { |article| article.priority == 5 }
  end
end
