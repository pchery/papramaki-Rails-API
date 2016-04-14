json.array!(@expenditures) do |expenditure|
  json.extract! expenditure, :id, :amount, :category_id, :created_at, :updated_at
  json.url expenditure_url(expenditure, format: :json)
end
