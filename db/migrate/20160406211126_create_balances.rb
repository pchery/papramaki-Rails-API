class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.decimal :amount, default: 0.0, null: false
      t.references :user
      t.timestamps null: false
    end
  end
end
