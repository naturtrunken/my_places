json.array!(@markers) do |marker|
  json.extract! marker, :id, :name, :icon
  json.url marker_url(marker, format: :json)
end
