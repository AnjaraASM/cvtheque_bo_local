class AddSousCategorieToCv < ActiveRecord::Migration[7.0]
  def change
    add_column :cvs, :sous_category_id, :integer
  end
end
