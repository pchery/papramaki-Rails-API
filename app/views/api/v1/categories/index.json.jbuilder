json.array!(@categories) do |category|
  json.extract! category, :id, :name, :color, :expenditures
  json.url api_category_url(category, format: :json)
end
