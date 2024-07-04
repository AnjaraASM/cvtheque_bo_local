class AddDatedispoToCv < ActiveRecord::Migration[7.0]
  def change
    add_column :cvs, :datedispo, :string
  end
end
