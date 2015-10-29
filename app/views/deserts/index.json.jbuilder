json.array!(@deserts) do |desert|
  json.extract! desert, :id, :name, :cost, :image
  json.url desert_url(desert, format: :json)
end
