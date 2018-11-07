class PhotographersController < ApplicationController

  def index         # GET /contributors
    @photographers = Photographer.all
  end

  def show          # GET /contributors/:id
    @photographer = Photographer.find(params[:id])
  end

  def new           # GET /contributors/new
    @photographer = Photographer.new
  end

  def create        # POST /contributors
    @photographer = Photographer.new(contributor_params)
    @photographer.save
    redirect_to photographer_path(@photographer)
  end

  def edit
    @photographer = Photographer.find(params[:id])
  end

  def update
    @photographer = Photographer.find(params[:id])
    @photographer.update(contributor_params)
    redirect_to photographer_path(@photographer)
  end

  def destroy
    @photographer = Photographer.find(params[:id])
    @photographer.destroy
  end

  def delete
    @photographer = Photographer.find(params[:id])
    @photographer.deleted = true
  end

  private

  def contributor_params
    params.require(:photographer).permit(:name, :photo, :bio, :twitter, :instagram, :website)
  end

end
