SELECT artists.artistId,
  artists.name,
  albums.title,
  tracks.name
FROM albums
  JOIN artists ON artists.artistId IS albums.artistId
  JOIN tracks ON tracks.albumId IS albums.albumId
WHERE artists.artistId == 58
GROUP BY albums.title;