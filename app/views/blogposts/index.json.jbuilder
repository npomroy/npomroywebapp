json.array!(@blogposts) do |blogpost|
  json.extract! blogpost, :id
  json.url blogpost_url(blogpost, format: :json)
end
