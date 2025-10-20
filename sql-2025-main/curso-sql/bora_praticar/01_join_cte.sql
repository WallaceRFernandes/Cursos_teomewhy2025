-- 11 quem inciou o curso no primeiro dia, em media assistiu quantas aulas?


--tb_prim_dia
--tb_dias_curso
--tb_cliente_dias

WITH tb_prim_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
),

tb_dias_curso AS (
    SELECT DISTINCT 
           IdCliente,
           substr(DtCriacao,1,10) AS presenteDia
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'
    ORDER BY IdCliente, presenteDia    
),

tb_cliente_dias AS (
    SELECT t1.IdCliente,
        count(DISTINCT t2.presenteDia) AS qtdeDias
    FROM tb_prim_dia AS t1
    LEFT JOIN tb_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente
    GROUP BY t1.IdCliente
)

SELECT avg(qtdeDias)
FROM tb_cliente_dias
