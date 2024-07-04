class Rating < ApplicationRecord
   belongs_to :user
   belongs_to :cv, touch: true
end
