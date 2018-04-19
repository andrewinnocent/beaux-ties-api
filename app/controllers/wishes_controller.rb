class WishesController < ProtectedController
  before_action :set_wish, only: %i[show update destroy]

  # GET /wishes
  def index
    @wishes = current_user.wishes.all

    render json: @wishes
  end

  # GET /wishes/1
  def show
    render json: @wish
  end

  # POST /wishes
  def create
    @wish = current_user.wishes.build(wish_params)

    if @wish.save
      render json: @wish, status: :created, location: @wish
    else
      render json: @wish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wishes/1
  def update
    @wish = Wish.find(params[:id])

    if @wish.update(wish_params)
      render json: @wish
    else
      render json: @wish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wishes/1
  def destroy
    @wish.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish
      @wish = current_user.wishes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wish_params
      params.require(:wish).permit(:user_id, :bow_id, :active)
    end
end
