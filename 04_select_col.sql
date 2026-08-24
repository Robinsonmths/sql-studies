SELECT 
        idCliente,
        --qtdePontos,
        --qtdePontos + 10 AS QtdePontosPlus10,
        --qtdePontos * 2 AS QtdePontosDuble,
        DtCriacao,
        substr(DtCriacao,1,19) AS dtSubString,
        date(substr(DtCriacao,1,19)) AS DtCriacaoNova,
        strftime('%w',datetime(substr(DtCriacao,1,19))) AS diaSemana
FROM clientes