class AddResumeToCv < ActiveRecord::Migration[7.0]
  def change
    add_column :cvs, :resume, :text
  end
end
