class CreateUserCategorieCvs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_categorie_cvs do |t|
      t.integer :user_id
      t.integer :categorie_cv_id

      t.timestamps
    end
  end
end
