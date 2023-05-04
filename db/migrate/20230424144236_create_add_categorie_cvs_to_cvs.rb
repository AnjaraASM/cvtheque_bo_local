class CreateAddCategorieCvsToCvs < ActiveRecord::Migration[7.0]
  def change
    add_column :cvs, :categorie_cv_id, :integer
  end
end
