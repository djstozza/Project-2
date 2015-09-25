json.array!(@items) do |item|
  json.extract! item, :id, :name, :price, :subcategory_id, :user_id, :active
  json.url item_url(item, format: :json)
end
