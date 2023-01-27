SELECT
    c.cancao_nome AS nome,
    count(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
    INNER JOIN SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
    INNER JOIN SpotifyClone.usuario AS u ON h.usuario_id = u.usuario_id
WHERE
    u.plano_id = 1
    OR u.plano_id = 4
GROUP BY nome
ORDER BY nome ASC;