class CreateDiplomes < ActiveRecord::Migration[7.0]
  def change
    create_table :diplomes do |t|
      t.string :ecole
      t.string :datecole
      t.text :descriptionecole

      t.timestamps
    end
  end
end
