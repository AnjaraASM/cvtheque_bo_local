class AddCvToExperience < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :cv_id, :integer
  end
end
