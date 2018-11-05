class OpinionsController < ApplicationController
  def index         # GET /opinions
    @opinions = Article.where(category: "opinion").where(deleted: false)
    if params[:tag].present?
      @opinions = @opinions.where(tag: params[:tag])
    end
    @opinions = @opinions.sort_by &:updated_at
  end

  def show          # GET /opinions/:id
    @opinion = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def new           # GET /opinions/new
    @opinion = Article.new
    @article = Article.new
  end

  def create        # POST /opinions
    @opinion = Article.new(opinion_params)
    @opinion.save
    redirect_to opinion_path(@opinion)
  end

  def edit
    @opinion = Article.find(params[:id])
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
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photo, :body, :published, :deleted, :category)
  end
end
