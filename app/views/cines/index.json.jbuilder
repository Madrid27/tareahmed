json.array!(@cines) do |cine|
  json.extract! cine, :id, :pelicula, :raiting
  json.url cine_url(cine, format: :json)
end
