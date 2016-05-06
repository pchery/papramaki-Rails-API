json.array!(@expenditures) do |expenditure|
  json.extract! expenditure, :id, :amount, :budget_id, :category_id, :created_at, :updated_at
  json.url api_expenditure_url(expenditure, format: :json)
end
