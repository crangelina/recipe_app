class Entry < ActiveRecord::Base
  include Taggable
  
  belongs_to :meal
  has_one    :nutrition, as: :subject
  nilify_blanks

end
