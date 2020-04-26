class ContributorsController < ApplicationController

  def index         # GET /contributors
    @contributors = Contributor.all
  end

  def show          # GET /contributors/:id
    @contributor = Contributor.find(params[:id])
  end

  def new           # GET /contributors/new
    @contributor = Contributor.new
  end

  def create        # POST /contributors
    @contributor = Contributor.new(contributor_params)
    @contributor.save
    redirect_to contributor_path(@contributor)
  end

  def edit
    @contributor = Contributor.find(params[:id])
  end

  def update
    @contributor = Contributor.find(params[:id])
    @contributor.update(contributor_params)
    redirect_to contributor_path(@contributor)
  end

  def destroy
    @contributor = Contributor.find(params[:id])
    @contributor.destroy
  end

  def delete
    @contributor = Contributor.find(params[:id])
    @contributor.deleted = true
  end

  private

  def contributor_params
    params.require(:contributor).permit(:name, :photo, :bio, :twitter, :instagram, :linked_in, :website)
  end

end
