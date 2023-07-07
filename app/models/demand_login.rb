class DemandLogin < ApplicationRecord
    validates_presence_of :name, presence: true, message: "Le champ nom et prenom sont obligatoire" 
    # validates_presence_of :email, message: "Le champ email est obligatoire"
    # validates_presence_of :object, message: "Le champ société est obligatoire"
    # validates_presence_of :numero, message: "Le champ numero de téléphone est obligatoire"
    # validates_presence_of :description, message: "Le champ decription est obligatoire"
end
