class PinsController < ApplicationController
  def show
    @pin = Pin.find(params[:id])
    if @pin.category == 'event'
      redirect_to event_path(@pin)
    elsif @pin.category == 'space'
      redirect_to space_path(@pin)
    end
  end

  def edit
    @pin = Pin.find(params[:id])
    if @pin.category == 'event'
      redirect_to edit_event_path(@pin)
    elsif @pin.category == 'space'
      redirect_to edit_space_path(@pin)
    end
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.save
    if @pin.category == 'event'
      redirect_to event_path(@pin)
    elsif @pin.category == 'space'
      redirect_to space_path(@pin)
    end
  end

  def publish!
    @pin = Pin.find(params[:id])
    @pin.published = !@pin.published
    @pin.published_at = Time.new
    @pin.save
    if @pin.category == 'event'
      redirect_to events_path(@pin)
    elsif @pin.category == 'space'
      redirect_to spaces_path(@pin)
    end
  end

  def delete
    @pin = Pin.find(params[:id])
    @pin.deleted = !@pin.deleted
    @pin.save
    if @pin.category == 'event'
      redirect_to events_path(@pin)
    elsif @pin.category == 'space'
      redirect_to spaces_path(@pin)
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:name, :category, :event_type, :location, :phone, :date, :end_date, :address, :url, :description, :published, :photo)
  end

end
