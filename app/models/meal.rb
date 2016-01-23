class Meal < ActiveRecord::Base

  has_many :ingredients, dependent: :destroy
  has_many :directions,  dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
  accepts_nested_attributes_for :directions, reject_if: :all_blank

  validates :name, :description, :servings, presence: true
  
  mount_uploader :avatar, AvatarUploader
  
  TAGS = %w(Breakfast Lunch Dinner Snack)

  validates :tag, inclusion: { 
    in: TAGS,
    message: " (Meal) must be selected" 
  }

  def self.search(search)
    like_operator = Rails.env.production? ? "ILIKE" : "LIKE"
    where("name #{like_operator} ?", "%#{search}%")
  end

end
