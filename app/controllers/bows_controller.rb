class BowsController < ApplicationController
  before_action :set_bow, only: %i[show update destroy]

  # GET /bows
  def index
    @bows = Bow.all

    render json: @bows
  end

  # GET /bows/1
  def show
    render json: @bow
  end

  # POST /bows
  def create
    @bow = Bow.new(bow_params)

    if @bow.save
      render json: @bow, status: :created, location: @bow
    else
      render json: @bow.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bows/1
  def update
    @bow = Bow.find(params[:id])

    if @bow.update(bow_params)
      render json: @bow
    else
      render json: @bow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bows/1
  def destroy
    @bow.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow
      @bow = Bow.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bow_params
      params.require(:bow).permit(:name, :style, :color, :fabric, :descriptiong, :price, :stock_quantity, :image)
    end
end
