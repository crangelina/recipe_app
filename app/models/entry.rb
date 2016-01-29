class Entry < ActiveRecord::Base
  belongs_to :meal

  nilify_blanks

end
