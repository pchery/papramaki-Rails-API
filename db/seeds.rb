# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Balance.create(amount: 200)
Budget.create(amount: 100, duration: 12)
Category.create(name: 'food', color: '#f32acd')
Expenditure.create([{amount: 56, budget_id: 1, category_id: 1}, {amount: 302, budget_id: 1, category_id: 1}])
