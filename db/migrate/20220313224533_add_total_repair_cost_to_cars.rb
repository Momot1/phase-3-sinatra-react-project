class AddTotalRepairCostToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :total_repair_cost, :float
  end
end
