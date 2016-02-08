json.array!(@song_users) do |song_user|
  json.extract! song_user, :id, :user_id, :song_id
  json.url song_user_url(song_user, format: :json)
end
