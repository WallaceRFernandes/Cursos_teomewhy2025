--qual mes tivemos mais listas de presenca assinada
SELECT 
    --    t1.IdTransacao,
    --    t1.DtCriacao,
       substr(t1.DtCriacao, 1, 7) AS anoMes,
       count(DISTINCT t1.IdTransacao) AS qtdeTransacao
FROM transacoes AS t1
LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao
LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto
WHERE DescProduto = 'Lista de presença'
GROUP BY substr(t1.DtCriacao, 1, 7)
ORDER BY qtdeTransacao DESC
