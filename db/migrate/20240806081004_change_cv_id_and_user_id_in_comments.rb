class ChangeCvIdAndUserIdInComments < ActiveRecord::Migration[7.0]
  def up
    change_column :comments, :cv_id, 'bigint USING CAST(cv_id AS bigint)'
    change_column :comments, :user_id, 'bigint USING CAST(user_id AS bigint)'
  end

  def down
    change_column :comments, :cv_id, :string
    change_column :comments, :user_id, :string
  end
end
