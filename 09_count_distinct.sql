SELECT 
    count (*),
    count (DISTINCT IdTransacao) AS "Transações distintas",
    count (DISTINCT IdCliente) AS "Clientes distintos"
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
ORDER BY DtCriacao DESC