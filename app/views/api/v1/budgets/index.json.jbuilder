json.array!(@budgets) do |budget|
  json.extract! budget, :id, :amount, :duration, :expired, :expiration_date, :expenditures, :expenditure_sum_amount, :created_at, :updated_at
  json.url api_budget_url(budget, format: :json)
end
