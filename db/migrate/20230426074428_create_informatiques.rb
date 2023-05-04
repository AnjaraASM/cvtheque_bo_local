class CreateInformatiques < ActiveRecord::Migration[7.0]
  def change
    create_table :informatiques do |t|
      t.string :logiciel
      t.integer :progressinfo

      t.timestamps
    end
  end
end
