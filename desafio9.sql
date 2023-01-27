SELECT
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico AS h
    INNER JOIN SpotifyClone.usuario AS u ON h.usuario_id = u.usuario_id
WHERE
    u.usuario_nome = 'Barbara Liskov';