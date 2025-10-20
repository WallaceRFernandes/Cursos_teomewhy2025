-- Como foi a curva de Churn do Curso de SQL?


SELECT 
       substr(DtCriacao,1,10) AS dtDia,
       count(DISTINCT IdCliente) AS qtdCliente
FROM transacoes
WHERE DtCriacao >= '2025-08-25'
AND DtCriacao < '2025-08-30'
GROUP BY dtDia;



WITH tb_cliente_d1 AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-26'
)
SELECT 
       substr(t2.DtCriacao,1,10) AS dtDia,
       count(DISTINCT t1.IdCliente) AS qtdeCliente,
       1.* count(DISTINCT t1.IdCliente) / (SELECT count(*) FROM tb_cliente_d1) AS pctRetencao,
       1 - 1.* count(DISTINCT t1.IdCliente) / (SELECT count(*) FROM tb_cliente_d1) AS pctChurn
FROM tb_cliente_d1 AS t1
LEFT JOIN transacoes AS t2
on t1.IdCliente = t2.IdCliente
WHERE t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'
GROUP BY dtDia
;