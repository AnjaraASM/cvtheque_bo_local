class CategorieCv < ApplicationRecord
    has_many :cvs, dependent: :destroy
end
