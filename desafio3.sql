SELECT
    u.usuario_nome AS usuario,
    COUNT(h.cancao_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao) / 60, 2) AS total_minutos
FROM
    SpotifyClone.historico AS h
    INNER JOIN SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
    INNER JOIN SpotifyClone.cancoes AS c ON h.cancao_id = c.cancao_id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome ASC;