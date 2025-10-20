--Lista de transações com o produto “Resgatar Ponei”;

-- SELECT IdProduto FROM produtos WHERE DescProduto LIKE '%Resgatar Ponei%';

-- SELECT * FROM transacao_produto WHERE IdProduto = 15.0;

SELECT *
FROM transacao_produto AS t1
WHERE t1.IdProduto IN (
    SELECT IdProduto
    FROM produtos
    WHERE DescProduto = 'Resgatar Ponei'
)