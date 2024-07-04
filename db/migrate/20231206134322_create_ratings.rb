class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :rate
      t.integer :user_id
      t.integer :cv_id

      t.timestamps
    end
  end
end
