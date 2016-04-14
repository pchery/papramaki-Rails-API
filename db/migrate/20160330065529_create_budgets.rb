class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.float :amount, default: 0.0
      t.integer :duration, default: 0
      t.references :user
      t.timestamps null: false
    end
  end
end
