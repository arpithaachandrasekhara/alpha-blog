class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :admin_role
    remove_column :users, :admin
  end
end
