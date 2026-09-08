
-- Intervalos
-- de  0 a 500      -> ponei
-- de 501 a 1000    -> ponei premium
-- de 1001 a 5000   -> mago aprendiz
-- de 5001 a 10000  -> mago mestre
-- + 10001          -> mago supremo
SELECT 
    idCliente,
    qtdePontos,
    CASE
        WHEN qtdePontos <= 500 THEN 'Ponei'
        WHEN qtdePontos <= 1000 THEN 'Ponei Premium'
        WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
        WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
        ELSE 'Mago Supremo'
    END AS NomeGrupo,

    CASE
        WHEN qtdePontos <= 1000 THEN 'Bronze'
        WHEN qtdePontos <= 5000 THEN 'Prata'
        WHEN qtdePontos <= 10000 THEN 'Ouro'
        ELSE 'Diamante'
    END AS NomeCategoria

FROM clientes

ORDER BY qtdePontos DESC