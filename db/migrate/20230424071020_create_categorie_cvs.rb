class CreateCategorieCvs < ActiveRecord::Migration[7.0]
  def change
    create_table :categorie_cvs do |t|
      t.string :categorie
      t.text :description

      t.timestamps
    end
  end
end
