module Taggable
  extend ActiveSupport::Concern

  TAGS = %w(Breakfast Lunch Dinner Snack)

  included do
    validates :tag, inclusion: {in: TAGS, message: " (Meal) must be selected"}
  end

  # class_methods do
  # end

end
