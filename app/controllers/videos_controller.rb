class VideosController < ApplicationController
  before_action :set_type

  def index
    @page = 'index'
    @media = Media.where(type: 'video').where(deleted: false)
    if params[:tag].present?
      @media = @media.where(tag: params[:tag])
    end
    @media = @media.sort_by &:updated_at
    @media.reverse!
  end

  def show
    @page = 'grey'
    @media = Media.find(params[:id])
  end

  private

  def set_type
    @type = 'video'
  end
end
