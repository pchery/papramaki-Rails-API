class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.float :amount
      t.references :user
      t.references :budget
      t.references :category
      t.timestamps null: false
    end
  end
end
