class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :stirng
  end
end
