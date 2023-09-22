class CreateCvs < ActiveRecord::Migration[7.0]
  def change
    create_table :cvs do |t|
      t.string :nomPrenom
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :telephone
      t.string :age
      t.string :adresse
      t.string :facebook
      t.string :linkedin
      t.string :aExperience
      t.string :nationalite
      t.text :descriptionProfile
      t.text :contrat
      t.text :national
      t.string :pretention
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
