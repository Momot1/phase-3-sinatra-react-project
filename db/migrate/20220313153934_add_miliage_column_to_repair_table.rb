class AddMiliageColumnToRepairTable < ActiveRecord::Migration[6.1]
  def change
    add_column :repairs, :miliage, :integer
  end
end
