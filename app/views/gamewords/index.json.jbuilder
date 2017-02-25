json.array!(@gamewords) do |gameword|
  json.extract! @gameroom, :id, :sender_id, :recipient_id, :phrase, :open, :updated_at
  json.url gameword_url(gameword, format: :json)
end
