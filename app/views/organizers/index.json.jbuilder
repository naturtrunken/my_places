json.array!(@organizers) do |organizer|
  json.extract! organizer, :id, :name, :url, :note
  json.url organizer_url(organizer, format: :json)
end
