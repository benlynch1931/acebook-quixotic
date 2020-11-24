json.pagination do
  json.current_page @posts.current_page
  json.per_page @posts.per_page
  json.total_entries @posts.total_entries
end

json.posts @posts do |posts|
  json.id posts.id

  json.user do
    json.id posts.user_id
    # json.name posts.user.name
    # json.email posts.user.email
  end

  json.message posts.message
  json.created_at posts.created_at
end
