SELECT
    a.artista_nome AS artista,
    al.album_nome AS album,
    COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
    JOIN SpotifyClone.album AS al ON a.artista_id = al.artista_id
    JOIN SpotifyClone.seguidores AS s ON a.artista_id = s.artista_id
GROUP BY album, artista
ORDER BY
    seguidores DESC,
    artista ASC,
    album ASC;