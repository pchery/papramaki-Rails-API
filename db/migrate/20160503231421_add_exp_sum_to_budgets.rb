class AddExpSumToBudgets < ActiveRecord::Migration
  def change
    add_column :budgets, :expenditure_sum_amount, :decimal, default: 0.0, null: false
  end
end
