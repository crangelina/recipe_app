class DirectionsController < ApplicationController

    def new
    @meal = Meal.find(params[:meal_id])
    @direction = Direction.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @direction = @meal.directions.new(direction_params)

    @direction.save
    redirect_to @meal
  end

  private

    def direction_params
      params.require(:direction).permit(:step)
    end
    
end
