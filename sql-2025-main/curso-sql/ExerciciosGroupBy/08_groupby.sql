--Qual o produto com mais pontos transacionado?
SELECT *
FROM produtos
ORDER BY IdProduto;

SELECT 
    IdProduto,
    VlProduto,
    SUM(QtdeProduto) AS QtdeTransacoesProduto,
    SUM(QtdeProduto) * VlProduto AS TotalDePontosGastos
FROM transacao_produto
GROUP BY IdProduto
ORDER BY TotalDePontosGastos DESC;
