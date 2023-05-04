class CreateCvs < ActiveRecord::Migration[7.0]
  def change
    create_table :cvs do |t|
      t.string :nomPrenom
      t.string :email
      t.string :telephone
      t.string :age
      t.string :adresse
      t.string :facebook
      t.string :linkedin
      t.text :descriptionProfile
      t.boolean :status

      t.timestamps
    end
  end
end
