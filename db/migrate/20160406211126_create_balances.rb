class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.float :amount, default: 0.0
      t.references :user
      t.timestamps null: false
    end
  end
end
