SELECT
    a.artista_nome AS artista,
    al.album_nome AS album
FROM SpotifyClone.artista AS a
    INNER JOIN SpotifyClone.album AS al ON a.artista_id = al.artista_id
HAVING
    artista = 'Elis Regina';