# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Balance.create(amount: 200,user_id: 3)
Budget.create(amount: 100, duration: 12, user_id: 3)
Category.create(name: 'food', color: '#f32acd', user_id: 3)
Expenditure.create([{amount: 56, budget_id: 1, category_id: 1, user_id: 3}, {amount: 302, budget_id: 1, category_id: 1, user_id: 3}])
