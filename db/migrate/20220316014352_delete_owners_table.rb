class DeleteOwnersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :owners
  end
end
