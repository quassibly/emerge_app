class MediaController < ApplicationController
  # def index
  #   @page = 'index'
  # end

  # def show


  # end

  def new
    @page = 'grey'
    @media = Media.new
  end

  def create
    @media = Media.new(media_params)
    @media.save
    if @media.type == 'video'
      redirect_to videos_path
    elsif @media.type == 'podcast'
      redirect_to podcasts_path
    else
      redirect_to root
    end
  end

  def edit
    @page = 'grey'
    @media = Media.find(params[:id])
  end

  def update
    @media = Media.find(params[:id])
    @media.update(media_parms)
    if @media.type == 'video'
      redirect_to videos_path
    elsif @media.type == 'podcast'
      redirect_to podcasts_path
    else
      redirect_to root
    end
  end

  def destroy
    @media = Media.find(params[:id])
    @media.destroy
  end

  private

  def delete
    @media = Media.find(params[:id])
    @media.deleted = true
    @media.save
  end

  def media_params
    params.require(:media).permit(:title, :type, :description, :url)
  end

end
