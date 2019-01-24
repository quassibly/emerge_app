class EventsController < ApplicationController
  before_action :set_category

  def index
    @page = 'index'
    @events = Pin.where(category: 'event').where(deleted: false)
    @events = @events.sort_by &:updated_at
    @events.reverse!
  end

  def show
    @page = 'grey'
    @pin = Pin.find(params[:id])
  end

  def new
    @page = 'grey'
    @pin = Pin.new
  end

  def edit
    @pin = Pin.find(params[:id])
    @event = Pin.find(params[:id])
  end

  def update
    @event = Pin.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  private

  def set_category
    @category = 'event'
  end

  def event_params
    params.require(:pin).permit(:name, :category, :event_type, :location, :phone, :date, :end_date, :address, :url, :description, :published, :photo)
  end
end
