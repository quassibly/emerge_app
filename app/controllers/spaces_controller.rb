class SpacesController < ArticlesController
  before_action :set_category

  def index
    @page = 'index'
    @pins = Pin.space.published_not_deleted
    @pins = Pin.space.not_deleted if user_signed_in?

    @event_types = @pins.pluck(:event_type).uniq
    @regions = @pins.pluck(:region).uniq

    @pins = @pins.event_type(params[:event_type]) if params[:event_type].present?
    @pins = @pins.region(params[:region]) if params[:region].present?

    @pagy, @pins = pagy_array(sort_pins, items: 7)
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
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @pin.published = !@pin.published
      @pin.published_at = Time.now
    end
    @pin.save
    redirect_to space_path(@pin)
  end

  def edit
    @pin = Pin.find(params[:id])
    @event = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    @pin.update(space_params)
    if params[:commit] == 'Publish' || params[:commit] == 'Unpublish'
      @pin.published = !@pin.published
      @pin.published_at = Time.now
    end
    @pin.save
    redirect_to space_path(@pin)
  end

  private

  def set_category
    @category = 'space'
  end

  def space_params
    params.require(:pin).permit(:name, :category, :event_type, :location, :region, :phone, :date, :end_date, :address, :url, :description, :published, :photo)
  end

  def sort_pins
    @pins.each { |pin| pin.published_at = Time.now if pin.published_at == nil }
    @pins.sort_by { |pin| pin.published_at }.reverse
  end
end
