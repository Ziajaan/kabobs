json.array!(@kabobs) do |kabob|
  json.extract! kabob, :id, :name, :sides, :cost, :image
  json.url kabob_url(kabob, format: :json)
end
