class SpacesController < ApplicationController
  before_action :set_category

  def index
    @page = 'index'
    @pins = Pin.where(category: 'space').where(deleted: false)
    @pins = @pins.sort_by &:updated_at
    @pins.reverse!

    @markers = @pins.map do |pin|
      {
        lat: pin.latitude,
        lng: pin.longitude,
        title: pin.name,
        # infoWindow: { content: render_to_string(partial: "/events/map_box", locals: { event: event }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
    end
  end

  def show
    @page = 'grey'
    @pin = Pin.find(params[:id])
  end

  def new
    @page = 'grey'
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(space_params)
    @pin.save
    redirect_to space_path(@pin)
  end

  def edit
    @pin = Pin.find(params[:id])
    @event = Pin.find(params[:id])
  end

  def update
    @space = Pin.find(params[:id])
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  private

  def set_category
    @category = 'space'
  end

  def space_params
    params.require(:pin).permit(:name, :category, :event_type, :location, :phone, :date, :end_date, :address, :url, :description, :published, :photo)
  end
end
