json.array!(@gamerooms) do |gameroom|
  json.extract! gameroom, :id, :title, :host_id
  json.url gameroom_url(gameroom, format: :json)
end
