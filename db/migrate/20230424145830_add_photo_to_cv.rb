class AddPhotoToCv < ActiveRecord::Migration[7.0]
  def change
    add_column :cvs, :photo, :text
  end
end
