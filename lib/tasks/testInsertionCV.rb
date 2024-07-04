# Chargez l'environnement Rails
require_relative '../../config/environment'

cvs = Cv.new(
            nomPrenom: "info[:nomPrenom]",
            email: "info[:email]",
            telephone: "info[:telephone]",
            adresse: "info[:adresse]",
            facebook: "info[:facebook]",
            linkedin: "info[:linkedin]",
            aExperience: "info[:aExperience]",
            nationalite: "info[:nationalite]",
            descriptionProfile: "info[:descriptionProfile]",
            contrat: "info[:contrat]",
            national: "info[:national]",
            pretention: "info[:pretention]",
            status: "info[:status]",
            resume: "info[:resume]"
          )

if cvs.save
  puts "CV créé avec succès."
else
  puts "Erreur lors de la création du CV : #{cvs.errors.full_messages.join(', ')}"
end
