require "pp"

class MealsController < ApplicationController
  before_filter :set_meal, only: [:show, :update, :edit, :destroy]
  before_filter :set_tags, only: [:new, :create, :edit]

  def index
    @meals = params[:search] ? Meal.search(params[:search]) : Meal.all
    @meals = @meals.order("id DESC").paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @ingredients = @meal.ingredients
    @directions  = @meal.directions
  end

  def new
    @meal = Meal.new
    
    3.times do 
      @meal.ingredients.build
      @meal.directions.build
    end

    @meal.build_nutrition
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      flash[:success] = "#{@meal.name} has been successfully created."
      redirect_to @meal
    else
      flash.now[:danger] = "The meal could not be created."
      render action: "new"
    end
  end

  def edit
    @meal.build_nutrition unless @meal.nutrition.present?

    unless @meal.ingredients.present?
      3.times do 
        @meal.ingredients.build 
      end
    end

    unless @meal.directions.present?
      3.times do 
        @meal.directions.build 
      end
    end
  end

  def update
    if @meal.update_attributes(meal_params)
      redirect_to @meal
    else
      render action: "edit"
    end
  end

  def destroy
    @meal.destroy
    flash[:info] = "#{@meal.name} has been successfully deleted."
    redirect_to meals_path
  end


  private
  
    def meal_params
      params.require(:meal).permit(
        :name, 
        :description, 
        :tag, 
        :servings, 
        :avatar, 
        :ingredients_attributes => [:name, :amount, :id], 
        :directions_attributes  => [:step, :id],
        :nutrition_attributes   => [:calories, :protein, :carbs, :fat]
      )
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end

    def set_tags
      @tags = Meal::TAGS
    end

end
