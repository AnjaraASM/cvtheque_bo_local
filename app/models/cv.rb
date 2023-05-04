class Cv < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    belongs_to :categorie_cv
    has_many :experiences
    has_many :diplomes
    has_many :langages
    has_many :informatiques
    has_many :loisirs
end
