-- Lista de pedidos realizados n fim de semana;
SELECT 
    IdTransacao,
    DtCriacao,
    strftime('%w', datetime(substr(DtCriacao,1,19))) AS diaSemana
FROM transacoes
where diaSemana IN ('6','0')