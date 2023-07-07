class Cv < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    belongs_to :categorie_cv
    has_many :experiences, dependent: :destroy
    has_many :diplomes, dependent: :destroy
    has_many :langages, dependent: :destroy
    has_many :informatiques, dependent: :destroy
    has_many :loisirs, dependent: :destroy
    has_many :entretiens, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :comments, dependent: :destroy
end
