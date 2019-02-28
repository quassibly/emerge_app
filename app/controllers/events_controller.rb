class EventsController < ApplicationController
  before_action :set_category

  def index
    @page = 'index'
    @pins = Pin.event.published_not_deleted.since_today
    @pins = Pin.event.since_today.not_deleted if user_signed_in?

    @tags = @pins.pluck(:tag).uniq
    @event_types = @pins.pluck(:event_type).uniq
    @regions = @pins.pluck(:region).uniq
    @months = []
    @dates = @pins.pluck(:date)
    @dates.each do |date|
      @months << date.strftime("%B") if date.present?
    end
    @months = @months.uniq

    @pins = @pins.tag(params[:tag]) if params[:tag].present?
    @pins = @pins.event_type(params[:event_type]) if params[:event_type].present?
    @pins = @pins.region(params[:location]) if params[:location].present?
    @pins = @pins.where('extract(month from date) = ?', Date::MONTHNAMES.index(params[:month])) if params[:month].present?
    @pins = sort_pins

    @markers = @pins.map do |pin|
      {
        lat: pin.latitude,
        lng: pin.longitude,
        # infoWindow: { content: render_to_string(partial: "/events/map_box", locals: { event: event }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
        icon: 'https://res.cloudinary.com/novelty142/image/upload/v1550339075/font-awesome_4-7-0_map-marker_24_0_1bb3aa_none.png',
        infoWindow: {
          content: "<a href=#{event_path(pin)}>#{pin.name}</a>"
        }
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
    @pin = Pin.new(event_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @pin.published = !@pin.published
      @pin.published_at = Time.now
    end
    @pin.save
    redirect_to event_path(@pin)
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    @pin.update(event_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @pin.published = !@pin.published
      @pin.published_at = Time.now
    end
    @pin.save
    redirect_to event_path(@pin)
  end

  private

  def set_category
    @category = 'event'
  end

  def event_params
    params.require(:pin).permit(:name, :category, :tag, :event_type, :location, :region, :phone, :date, :end_date, :address, :url, :description, :published, :photo)
  end

  def sort_pins
    @pins.each { |pin| pin.published_at = Time.now if pin.published_at == nil }
    @pins.sort_by { |pin| pin.published_at }.reverse
  end
end
