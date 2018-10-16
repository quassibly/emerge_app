class ProfilesController < ApplicationController
  def index         # GET /profiles
    @profiles = Article.where(category: "profile")
    if params[:tag].present?
      @profiles = @profiles.where(tag: params[:tag])
    end

  end

  def show          # GET /profiles/:id
    @profile = Article.find(params[:id])
  end

  def new           # GET /profiles/new
    @profile = Article.new
  end

  def create        # POST /profiles
    @profile = Article.new(profile_params)
    @profile.save
    redirect_to profile_path(@profile)
  end

  def edit
    @profile = Article.find(params[:id])
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
    params.require(:article).permit(:person, :headline, :subhead, :tag, :contributor_id, :photo, :body)
  end
end
