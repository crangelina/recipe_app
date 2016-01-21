class IngredientsController < ApplicationController

  def new
    @meal = Meal.find(params[:meal_id])
    @ingredient = Ingredient.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.new(ingredient_params)

    @ingredient.save
    redirect_to @meal
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :amount)
    end
end
