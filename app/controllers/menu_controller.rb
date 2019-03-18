class MenuController < ActionController::API
  def show
    @meals = Meal.all
    @cart_items = CartItem.all
  end
end
