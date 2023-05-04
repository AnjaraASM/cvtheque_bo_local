class AddCvToDiplome < ActiveRecord::Migration[7.0]
  def change
    add_column :diplomes, :cv_id, :integer
  end
end
