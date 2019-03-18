class CartItemsController < ActionController::API
  def show
    @cart = CartItem.first
  end

  def create
    @cart_item = CartItem.find_or_initialize_by(meal_id: meal_id_params)

    if @cart_item.new_record?
      @cart_item.save
    else
      quantity = @cart_item.quantity + 1
      @cart_item.update(quantity: quantity)
    end
  end

  def destroy
  end

  private

  def cart_params
    params.require(:cart_item).permit(:id)
  end

  def meal_id_params
    cart_params[:id]
  end
end
