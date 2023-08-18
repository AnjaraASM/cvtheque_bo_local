class CreateViews < ActiveRecord::Migration[7.0]
  def change
    create_table :views do |t|
      t.integer :cv_id
      t.integer :user_id

      t.timestamps
    end
  end
end
