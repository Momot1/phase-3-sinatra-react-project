class AddTotalRepairCostToCars < ActiveRecord::Migration[6.1]
  # Add a total repair cost column to cars table
  
  def change
    add_column :cars, :total_repair_cost, :float
  end
end
