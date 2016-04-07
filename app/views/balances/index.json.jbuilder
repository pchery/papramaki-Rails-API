json.array!(@balances) do |balance|
  json.extract! balance, :id, :amount
  json.url balance_url(balance, format: :json)
end
