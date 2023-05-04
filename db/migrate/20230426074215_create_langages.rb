class CreateLangages < ActiveRecord::Migration[7.0]
  def change
    create_table :langages do |t|
      t.string :langue
      t.integer :progresslangue

      t.timestamps
    end
  end
end
