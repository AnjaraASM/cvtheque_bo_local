class CreateAddAuthenticationTokenToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :authentication_token, :text, limit: 5
    add_index :users, :authentication_token, unique: true
  end
end
