class Tag < ActiveRecord::Base
  belongs_to :user
  has_many   :meals,     through: :meal_tags
  has_many   :meal_tags, dependent: :destroy
end
