class Entretien < ApplicationRecord
    belongs_to :user
    belongs_to :cv
end
