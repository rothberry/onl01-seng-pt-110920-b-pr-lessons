-- SELECT artists.artistId, artists.name, albums.title
SELECT *
FROM tracks
  JOIN genres ON tracks.GenreId = genres.GenreId
WHERE genres.name = "Pop";