class AddDisponiblityToCv < ActiveRecord::Migration[7.0]
  def change
    add_column :cvs, :disponibility, :string
  end
end
