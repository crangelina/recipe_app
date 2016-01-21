class Ingredient < ActiveRecord::Base
  belongs_to :meal

  validates_presence_of :name
end
