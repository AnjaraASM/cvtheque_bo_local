class SousCategory < ApplicationRecord
    has_many :cvs, dependent: :destroy
    belongs_to :categorie_cv
end
