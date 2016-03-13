class Entry < ActiveRecord::Base
  include Taggable
  
  belongs_to :meal
  belongs_to :user

  has_one :nutrition, as: :subject, dependent: :destroy
  accepts_nested_attributes_for :nutrition, reject_if: :all_blank

  nilify_blanks

end
