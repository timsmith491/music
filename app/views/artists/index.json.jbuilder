json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :dob, :image, :recordLabel
  json.url artist_url(artist, format: :json)
end
