class EntriesController < ApplicationController

  def index
    if params[:date]
      @start = Date.parse(params[:date]).at_beginning_of_week
    else
      @start = Date.today.at_beginning_of_week
    end

    @week = @start..@start+6.days
    @entry = Entry.new
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      flash[:success] = "#{@entry.tag} was successfully added."
      redirect_to(:back)
    else
      flash[:info] = "The meal was not successfully added."
      redirect_to(:back)
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    flash[:info] = "#{@entry.tag} has been successfully deleted."
    redirect_to(:back)
  end

  private

    def entry_params
      params.require(:entry).permit(:day, 
                                    :tag,
                                    :note,
                                    :meal_id)
    end
end
