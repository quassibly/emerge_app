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
end
