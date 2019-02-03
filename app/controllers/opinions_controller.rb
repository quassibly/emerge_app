class OpinionsController < ApplicationController
  before_action :set_category

  def index         # GET /opinions
    @page = 'index'
    @opinions = Article.where(category: "opinion", deleted: false, priority: 1..4)
    if params[:tag].present?
      @opinions = @opinions.where(tag: params[:tag])
    end
    @opinions = @opinions.sort_by &:published_at
    @opinions.reverse!
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
end
