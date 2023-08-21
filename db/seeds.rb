# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


users = [User.create( name: "Leila", email: "contact@activsolution.fr", password: "azerty@123456789", role: "Administrateur")]

categorie_cvs = [
    CategorieCv.create(categorie: "Télésecretaire Médical", description: "Poste de télésecretaire médical")
]

cvs = [
    Cv.create(nomPrenom: "Kioto Ny aina", email: "aina4587@gmail.com", telephone: "0325487956", age: "06/12/86", adresse: "Antananarivo",
        aExperience: "+ de 5 ans", nationalite: "Malagasy", contrat: "CDI"    
    )
]
