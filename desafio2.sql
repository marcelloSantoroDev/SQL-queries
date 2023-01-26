select (
        select count(*)
        from
            SpotifyClone.cancoes
    ) as cancoes, (
        select count(*)
        from
            SpotifyClone.artista
    ) as artistas, (
        select count(*)
        from
            SpotifyClone.album
    ) as albuns;