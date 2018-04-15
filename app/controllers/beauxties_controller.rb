class BeauxtiesController < ApplicationController
  before_action :set_beauxtie, only: %i[index show]

  # GET /beauxties
  def index
    @beauxties = Beauxtie.all

    render json: @beauxties
  end

  # GET /beauxties/1
  def show
    render json: @beauxtie
  end

  # POST /beauxties
  def create
    @beauxtie = Beauxtie.new(beauxtie_params)

    if @beauxtie.save
      render json: @beauxtie, status: :created, location: @beauxtie
    else
      render json: @beauxtie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beauxties/1
  def update
    if @beauxtie.update(beauxtie_params)
      render json: @beauxtie
    else
      render json: @beauxtie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beauxties/1
  def destroy
    @beauxtie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beauxtie
      @beauxtie = Beauxtie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def beauxtie_params
      params.require(:beauxtie).permit(:name, :style, :color, :fabric, :description, :price, :stock_quantity, :image)
    end
end
