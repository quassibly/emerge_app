class ProfilesController < ApplicationController
  before_action :set_category

  def index         # GET /profiles
    @page = 'index'
    @profiles = Article.where(category: "profile").where(deleted: false)
    if params[:tag].present?
      @profiles = @profiles.where(tag: params[:tag])
    end
    @profiles = @profiles.sort_by &:updated_at
  end

  def show          # GET /profiles/:id
    @page = 'grey'
    @profile = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def new           # GET /profiles/new
    @page = 'grey'
    @profile = Article.new
    @article = Article.new
  end

  def create        # POST /profiles
    @profile = Article.new(profile_params)
    @profile.save
    redirect_to profile_path(@profile)
  end

  def edit
    @page = 'grey'
    @profile = Article.find(params[:id])
    @article = Article.find(params[:id])
  end

  def update
    @profile = Article.find(params[:id])
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = Article.find(params[:id])
    @profile.destroy
  end

  def delete
    @profile = Article.find(params[:id])
    @profile.deleted = true
  end

  private

  def profile_params
    params.require(:article).permit(:headline, :subhead, :tag, :contributor_id, :photographer_id, :photo, :body, :published, :deleted, :category, :seo_title, :meta)
  end

  def set_category
    @category = "profiles"
  end
end
