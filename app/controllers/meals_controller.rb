require "pp"

class MealsController < ApplicationController
  before_filter :set_meal, only: [:show, :update, :edit, :destroy]

  def index
    @meals = params[:search] ? Meal.search(params[:search]) : Meal.all
    @meals = @meals.order("id DESC").paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @ingredients = @meal.ingredients
    @directions = @meal.directions
  end

  def new
    @meal = Meal.new
    @tags = Meal::TAGS
    
    3.times do 
      @meal.ingredients.build
      @meal.directions.build
    end
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to @meal
    else
      render action: "new"
    end
  end

  # TODO
  def update
  end

  # TODO
  def destroy
  end


  private
    def meal_params
      params.require(:meal).permit(
        :name, 
        :description, 
        :tag, 
        :servings, 
        :avatar, 
        :ingredients_attributes => [:name, :amount], 
        :directions_attributes => [:step]
      )
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end

end
