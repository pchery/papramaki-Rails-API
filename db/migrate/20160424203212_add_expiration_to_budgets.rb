class AddExpirationToBudgets < ActiveRecord::Migration
  def change
    add_column :budgets, :expired, :boolean, default: false
  end
end
