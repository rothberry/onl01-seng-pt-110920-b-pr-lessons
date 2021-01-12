SELECT artists.artistId, artists.name, albums.title
FROM artists
JOIN albums ON artists.artistId = albums.artistId
WHERE artists.artistId = 127;