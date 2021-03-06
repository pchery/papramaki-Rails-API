Balance.create(
  amount: 200,
  user_id: 1
)

Budget.create(
  amount: 100,
  duration: 12,
  user_id: 1
)

Category.create(
  name: 'Food',
  color: '#f32acd',
  user_id: 1
)

Expenditure.create(
  [
    {
      amount: 56,
      budget_id: 1,
      category_id: 1,
      user_id: 1
    },
    {
      amount: 302,
      budget_id: 1,
      category_id: 1,
      user_id: 1
    }
  ]
)
