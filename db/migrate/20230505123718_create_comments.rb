class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :commentaire
      t.string :user_id 
      t.string :cv_id 
      t.string :lu

      t.timestamps
    end
  end
end
