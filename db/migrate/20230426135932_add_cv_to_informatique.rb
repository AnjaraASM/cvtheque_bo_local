class AddCvToInformatique < ActiveRecord::Migration[7.0]
  def change
    add_column :informatiques, :cv_id, :integer
  end
end
