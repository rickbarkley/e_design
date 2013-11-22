class AddPlanCostToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :plan_cost, :decimal
  end
end
