class CategorieCv < ApplicationRecord
    has_many :cvs, dependent: :destroy
    has_many :sous_category, dependent: :destroy
end
