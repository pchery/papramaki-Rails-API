json.array!(@budgets) do |budget|
  json.extract! budget, :id, :amount, :duration, :expired, :expiration_date, :expenditures, :created_at, :updated_at
  json.url budget_url(budget, format: :json)
end
