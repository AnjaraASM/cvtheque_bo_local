class AddCvToLoisir < ActiveRecord::Migration[7.0]
  def change
    add_column :loisirs, :cv_id, :integer
  end
end
