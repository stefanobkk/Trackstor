json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :director, :run_time, :description, :rating, :genre
  json.url movie_url(movie, format: :json)
end
