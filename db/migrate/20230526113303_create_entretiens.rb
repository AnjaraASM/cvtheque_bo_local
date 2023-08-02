class CreateEntretiens < ActiveRecord::Migration[7.0]
  def change
    create_table :entretiens do |t|
      t.integer :user_id
      t.integer :cv_id
      t.string :drdv
      t.string :hrdv
      t.boolean :lu, default: false

      t.timestamps
    end
  end
end
