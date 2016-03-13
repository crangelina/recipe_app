module Taggable
  extend ActiveSupport::Concern

  MEALTYPE = %w(Breakfast Lunch Dinner Snack)

  included do
    validates :meal_type, inclusion: {in: MEALTYPE, message: " (Meal) must be selected"}
  end

  # class_methods do
  # end

end
