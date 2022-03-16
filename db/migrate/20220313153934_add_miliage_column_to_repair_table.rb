class AddMiliageColumnToRepairTable < ActiveRecord::Migration[6.1]
  # Add a miliage column to repairs table
  
  def change
    add_column :repairs, :miliage, :integer
  end
end
