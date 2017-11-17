class DropProductsTable < ActiveRecord::Migration[5.1]
   def up
    drop_table :assignments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
