SELECT
    u.usuario_nome AS usuario,
    IF(
        YEAR(MAX(h.data_historico)) >= 2021,
        'Usuário ativo',
        'Usuário inativo'
    ) AS status_usuario
FROM SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
GROUP BY usuario
ORDER BY usuario ASC;