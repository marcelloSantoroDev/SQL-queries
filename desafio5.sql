SELECT
    c.cancao_nome AS cancao,
    COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
    INNER JOIN SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;