# DELETE EVERYTHING

Artist.delete_all
Song.delete_all
Album.delete_all

# Create Artists

seeded_artists = 10
seeded_songs = 30
seeded_albums = 10

seeded_artists.times do 
  name = Faker::Music.band
  # name = Faker::FunnyName.name
  year = rand(1970..2020)

  Artist.create(name: name, year: year)
end

# Create Albums Seeds
seeded_albums.times do 
  title     = Faker::Music.album
  artist_id = rand(1..seeded_artists)

  Album.create(title: title)
end

# Create Songs and relations

seeded_songs.times do 
  title     = Faker::Music::RockBand.song
  album_id = rand(1..seeded_albums)

  Song.create(title: title, album_id: album_id)
end
