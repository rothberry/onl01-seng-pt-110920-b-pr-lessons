SELECT artists.artistId, artists.name, albums.title
FROM albums
JOIN artists
ON artists.artistId IS albums.artistId;