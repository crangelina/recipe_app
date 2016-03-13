require "pp"

class EntriesController < ApplicationController

  before_filter :set_meal_type, only: [:index, :new, :create]

  def index
    @user = current_user
    if params[:date]
      @start = Date.parse(params[:date]).at_beginning_of_week
    else
      @start = Date.today.at_beginning_of_week
    end

    @week = @start..@start+5.days
    @entry = Entry.new
    @entry.build_nutrition
  end

  def new
    @entry = Entry.new

  end

  def create
    @entry = Entry.new(entry_params)
    
    if @entry.save
      flash[:success] = "#{@entry.meal_type} was successfully added."
      redirect_to(:back)
    else
      flash[:info] = "The meal was not successfully added."
      redirect_to(:back)
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    flash[:info] = "#{@entry.meal_type} has been successfully deleted."
    redirect_to(:back)
  end

  private

    def entry_params
      params.require(:entry).permit(
        :day, 
        :meal_type,
        :note,
        :meal_id,
        :user_id, 
        :nutrition_attributes   => [:calories, :protein, :carbs, :fat]
      )
    end

    def set_meal_type
      @meal_type = Entry::MEALTYPE
    end
    
end
