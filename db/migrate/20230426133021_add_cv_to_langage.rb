class AddCvToLangage < ActiveRecord::Migration[7.0]
  def change
    add_column :langages, :cv_id, :integer
  end
end
