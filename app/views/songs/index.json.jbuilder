json.array!(@songs) do |song|
  json.extract! song, :id, :name, :image, :rating, :duration, :artist_id
  json.url song_url(song, format: :json)
end
