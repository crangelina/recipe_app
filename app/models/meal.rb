class Meal < ActiveRecord::Base

  has_many :ingredients, dependent: :destroy
  has_many :directions,  dependent: :destroy
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :directions
  
  mount_uploader :avatar, AvatarUploader
  
  TAGS = %w(Breakfast Lunch Dinner Snack)

  validates :tag, inclusion: { 
    in: TAGS,
    message: "Invalid tag name" 
  }

  def self.search(search)
    like_operator = Rails.env.production? ? "SLIKE" : "LIKE"
    where("name #{like_operator} ?", "%#{search}%")
  end

end
