--Qual dia da semana quem mais pedidos em 2025?

.tables

SELECT *
FROM transacoes;

SELECT 
       count(IdTransacao) AS QtdeTransacaoDia,
       strftime( '%w', date(substr(DtCriacao, 1, 10))) AS DiaDaSemana
FROM transacoes
WHERE DtCriacao >= '2025-01-01'
AND DtCriacao < '2026-01-01'
GROUP BY DiaDaSemana
ORDER BY QtdeTransacaoDia DESC
;