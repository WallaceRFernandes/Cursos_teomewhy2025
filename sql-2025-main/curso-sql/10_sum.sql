SELECT   
       count(QtdePontos) AS QtdeTotalDeTransacoes,
       count(CASE 
            WHEN QtdePontos > 0 THEN QtdePontos
            END) AS QtdeTransacoesPositivas,
       count(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
            END) AS QtdeTransacoesNegativos,
       sum(CASE 
            WHEN QtdePontos > 0 THEN QtdePontos
            END) AS QtdePontosPositivos,
       sum(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
            END) AS QtdePontosNegativos
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
