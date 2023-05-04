class CreateLoisirs < ActiveRecord::Migration[7.0]
  def change
    create_table :loisirs do |t|
      t.string :loisir

      t.timestamps
    end
  end
end
