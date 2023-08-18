class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :phone
      t.string :societe
      t.string :pass
      t.date :expire
      t.string :pays
      t.text :adresse
      t.boolean :account, default: false
      t.string :password_digest

      t.timestamps
    end
  end
end
