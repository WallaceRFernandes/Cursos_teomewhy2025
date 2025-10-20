--Quantos produtos são de rpg?
SELECT DescCateogriaProduto,
       count(DescCateogriaProduto) AS QtdeProdutosPorCategoria
FROM produtos
GROUP BY DescCateogriaProduto