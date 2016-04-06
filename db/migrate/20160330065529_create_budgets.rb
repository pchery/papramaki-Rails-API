class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.float :amount
      t.float :balance
      t.integer :duration
      t.references :user
      t.timestamps null: false
    end
  end
end
