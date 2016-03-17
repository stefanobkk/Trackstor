json.array!(@tvshows) do |tvshow|
  json.extract! tvshow, :id, :name, :air_date, :run_time
  json.url tvshow_url(tvshow, format: :json)
end
