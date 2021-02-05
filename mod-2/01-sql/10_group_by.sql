SELECT albums.albumId, albums.title, tracks.name
FROM albums
  JOIN tracks ON albums.albumId == tracks.albumId
-- GROUP BY albums.title
ORDER BY albums.title ASC
;