class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, default: ""
      t.string :color, default: ""
      t.references :user
      t.timestamps null: false
    end
  end
end
