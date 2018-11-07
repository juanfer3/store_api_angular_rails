class ArticuloImagesController < ApplicationController
  before_action :set_articulo_image, only: [:show, :update, :destroy]

  # GET /articulo_images
  def index
    @articulo_images = ArticuloImage.all

    render json: @articulo_images
  end

  # GET /articulo_images/1
  def show
    render json: @articulo_image
  end

  # POST /articulo_images
  def create
    @articulo_image = ArticuloImage.new(articulo_image_params)

    if @articulo_image.save
      render json: @articulo_image, status: :created, location: @articulo_image
    else
      render json: @articulo_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articulo_images/1
  def update
    if @articulo_image.update(articulo_image_params)
      render json: @articulo_image
    else
      render json: @articulo_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articulo_images/1
  def destroy
    @articulo_image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo_image
      @articulo_image = ArticuloImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def articulo_image_params
      params.require(:articulo_image).permit(:articulo_id)
    end
end
