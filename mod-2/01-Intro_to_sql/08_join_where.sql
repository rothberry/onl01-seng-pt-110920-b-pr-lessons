SELECT artists.artistId, artists.name, albums.title, albums.albumId
FROM albums
JOIN artists
ON artists.artistId IS albums.artistId
WHERE artists.artistId == 58
;