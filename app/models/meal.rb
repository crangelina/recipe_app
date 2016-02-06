class Meal < ActiveRecord::Base
  include Taggable

  has_many :ingredients, dependent: :destroy
  has_many :directions,  dependent: :destroy
  has_many :entries,     dependent: :destroy
  has_one  :nutrition,   as: :subject, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
  accepts_nested_attributes_for :directions,  reject_if: :all_blank
  accepts_nested_attributes_for :nutrition,   reject_if: :all_blank

  validates :name, :description, :servings, presence: true
  
  mount_uploader :avatar, AvatarUploader
  
  def self.search(search)
    like_operator = Rails.env.production? ? "ILIKE" : "LIKE"
    where("name #{like_operator} ?", "%#{search}%")
  end

end
