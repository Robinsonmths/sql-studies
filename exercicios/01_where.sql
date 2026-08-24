-- Selecione todos os clientes com email cadastrado

SELECT *
FROM clientes
WHERE flEmail = 1
/* 3 FORMAS DE FAZER A MESMA COISA
--WHERE flEmail != 0
--WHERE flEmail <> 0