class DeleteOwnersTable < ActiveRecord::Migration[6.1]
  # Delete owners table
  
  def change
    drop_table :owners
  end
end
