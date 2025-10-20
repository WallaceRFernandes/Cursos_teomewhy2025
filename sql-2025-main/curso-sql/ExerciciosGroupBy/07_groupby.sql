--Qual o produto mais transacionado?
.tables

SELECT *
FROM produtos
ORDER BY IdProduto;

SELECT *
FROM transacao_produto;

SELECT IdProduto,
       SUM(QtdeProduto) AS QtdeTransacoesProduto
FROM transacao_produto
GROUP BY IdProduto
ORDER BY QtdeTransacoesProduto DESC
;