class ImagesController < ApplicationController
  respond_to :json

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  # def create
  #   @image = Image.new(image_params)
  #   if @image.save
  #       flash[:success] = 'Photo added!'
  #       redirect_to image_path(id: @image.id)
  #   else
  #       render 'new'
  #   end
  # end

  def create
    # image_params[:image].open if image_params[:image].tempfile.closed?

    @image = Image.new(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully uploaded' }
        format.json { render :show, status: :created, location: @image}

      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end
end
