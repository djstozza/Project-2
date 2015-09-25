json.array!(@wishes) do |wish|
  json.extract! wish, :id, :user_id, :subcategory_id
  json.url wish_url(wish, format: :json)
end
