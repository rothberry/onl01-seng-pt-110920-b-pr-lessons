# DELETE EVERYTHING

Artist.delete_all
Song.delete_all

# Create Artists

seeded_artists = 10

seeded_artists.times do 
  name = Faker::Music.band
  # name = Faker::FunnyName.name
  year_started = rand(1970..2020)

  Artist.create(name: name, year_started: year_started)
end

# Create Songs and relations
seeded_songs = 30

seeded_songs.times do 
  title     = Faker::Music::RockBand.song
  artist_id = rand(1..seeded_artists)

  Song.create(title: title, artist_id: artist_id)
end