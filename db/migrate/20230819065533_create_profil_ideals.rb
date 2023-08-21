class CreateProfilIdeals < ActiveRecord::Migration[7.0]
  def change
    create_table :profil_ideals do |t|
      t.text :description
      t.integer :user_id
      t.boolean :lu, default: false, null: false

      t.timestamps
    end
  end
end
