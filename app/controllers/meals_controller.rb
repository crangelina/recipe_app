require "pp"

class MealsController < ApplicationController
  before_filter :set_meal, only: [:show, :update, :edit, :destroy]

  def index  
    if params[:search]
      @meals = current_user.meals.search(params[:search]) 
    elsif params[:tag]
      @meals = current_user.tags.find_by(name: params[:tag]).meals
    else 
      @meals = current_user.meals
    end

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
    @meal.tags.build
  end

  def create
    @meal = Meal.new(meal_params)
    

    if @meal.save
      create_tags
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
      create_tags
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
        :user_id,
        :ingredients_attributes => [:name, :amount, :id], 
        :directions_attributes  => [:step, :id],
        :nutrition_attributes   => [:calories, :protein, :carbs, :fat],
        :tags_attributes        => [:name, :color, :user_id, :id]
      )
    end

    def set_meal
      @meal = Meal.find(params[:id])
      return render file: "public/401.html" if @meal.user_id != current_user.id
    end

    def create_tags
      @meal.meal_tags.destroy_all

      return if params[:tags].nil?

      params[:tags].each do |tag_value| 
        tag = Tag.find_or_create_by(name: tag_value, user_id: current_user.id)
        @meal.tags << tag 
      end
    end

end
