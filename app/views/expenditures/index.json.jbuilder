json.array!(@expenditures) do |expenditure|
  json.extract! expenditure, :id, :amount, :category
  json.url expenditure_url(expenditure, format: :json)
end
