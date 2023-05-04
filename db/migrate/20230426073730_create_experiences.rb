class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :societe
      t.string :datexp
      t.text :descriptionexp

      t.timestamps
    end
  end
end
