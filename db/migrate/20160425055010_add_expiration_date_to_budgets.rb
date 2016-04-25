class AddExpirationDateToBudgets < ActiveRecord::Migration
  def change
    add_column :budgets, :expiration_date, :date
  end
end
