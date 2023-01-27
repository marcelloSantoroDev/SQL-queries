SELECT
    FORMAT(MIN(p.valor), 2) AS faturamento_minimo,
    FORMAT(MAX(p.valor), 2) AS faturamento_maximo,
    FORMAT(AVG(p.valor), 2) AS faturamento_medio,
    FORMAT(SUM(p.valor), 2) AS faturamento_total
FROM SpotifyClone.plano as p
    inner join SpotifyClone.usuario as u on p.plano_id = u.plano_id;