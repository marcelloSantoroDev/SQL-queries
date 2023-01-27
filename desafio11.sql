SELECT
    cancao_nome AS nome_musica,
    CASE
        WHEN cancao_nome LIKE '%Bard%' THEN
        REPLACE
(cancao_nome, 'Bard', 'QA')
            WHEN cancao_nome LIKE '%Amar%' THEN
        REPLACE
(
                cancao_nome,
                'Amar',
                'Code Review'
            )
            WHEN cancao_nome LIKE '%Pais%' THEN
        REPLACE
(
                cancao_nome,
                'Pais',
                'Pull Requests'
            )
            WHEN cancao_nome LIKE '%SOUL%' THEN
        REPLACE
(cancao_nome, 'SOUL', 'CODE')
            WHEN cancao_nome LIKE '%SUPERSTAR%' THEN
        REPLACE
(
                cancao_nome,
                'SUPERSTAR',
                'SUPERDEV'
            )
            ELSE cancao_nome
    END AS novo_nome
FROM SpotifyClone.cancoes
WHERE
    cancao_nome LIKE '%Bard%'
    OR cancao_nome LIKE '%Amar%'
    OR cancao_nome LIKE '%Pais%'
    OR cancao_nome LIKE '%SOUL%'
    OR cancao_nome LIKE '%SUPERSTAR%'
ORDER BY nome_musica desc;