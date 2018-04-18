class BowsCartsController < ProtectedController
  before_action :set_bows_cart, only: %i[show update destroy]

  # GET /bows_carts
  def index
    @bows_carts = current_user.bows_carts.all

    render json: @bows_carts
  end

  # GET /bows_carts/1
  def show
    render json: @bows_cart
  end

  # POST /bows_carts
  def create
    @bows_cart = current_user.cart.bows_carts.build(bows_cart_params)

    if @bows_cart.save
      render json: @bows_cart, status: :created, location: @bows_cart
    else
      render json: @bows_cart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bows_carts/1
  def update
    if @bows_cart.update(bows_cart_params)
      render json: @bows_cart
    else
      render json: @bows_cart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bows_carts/1
  def destroy
    @bows_cart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bows_cart
      @bows_cart = current_user.bows_carts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bows_cart_params
      params.require(:bows_cart).permit(:cart_id, :bow_id)
    end
end
