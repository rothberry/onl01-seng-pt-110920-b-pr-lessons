SELECT a.artistId as id,
  a.name as artistsName,
  b.title as albumTitle
FROM artists a
  JOIN albums b ON a.artistId = b.artistId;