class PodcastsController < ApplicationController
  before_action :find_media
  before_action :set_type

  def index
    @page = 'index'
    @media = Media.where(type: 'podcast').where(deleted: false)
    if params[:tag].present?
      @media = @media.where(tag: params[:id])
    end
    @media = @media.sort_by &:updated_at
    @media.reverse!
  end

  def show
    @page = 'grey'
  end

  private

  def find_media
    @media = Media.find(params[:id])
  end

  def set_type
    @type = 'podcast'
  end
end
