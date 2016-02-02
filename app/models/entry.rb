class Entry < ActiveRecord::Base
  
  belongs_to :meal

  nilify_blanks

  TAGS = %w(Breakfast Lunch Dinner Snack)

  validates :tag, inclusion: { 
    in: TAGS,
    message: " (Meal) must be selected" 
  }

end
