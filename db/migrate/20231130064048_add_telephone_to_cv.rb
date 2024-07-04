class AddTelephoneToCv < ActiveRecord::Migration[7.0]
  def change
    add_column :cvs, :telephone1, :string
    add_column :cvs, :telephone2, :string
  end
end
