json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :user_id, :item_id
  json.url bookmark_url(bookmark, format: :json)
end
