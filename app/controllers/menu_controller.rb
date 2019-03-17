class MenuController < ActionController::API
  def show
    @meals = Meal.all
  end
end
