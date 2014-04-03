json.array!(@profils) do |profil|
  json.extract! profil, :id, :nom, :description, :cours
  json.url profil_url(profil, format: :json)
end
