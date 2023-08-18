class CreateSousCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sous_categories do |t|
      t.string :categorie
      t.integer :categorie_cv_id
      t.text :description

      t.timestamps
    end
  end
end
