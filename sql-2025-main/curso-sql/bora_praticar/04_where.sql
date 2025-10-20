--Selecione produtos que contem churn no nome

SELECT * FROM produtos WHERE DescProduto LIKE '%Churn%';
SELECT * FROM produtos WHERE DescProduto IN ('Churn_10pp','Churn_2pp','Churn_5pp');
SELECT * FROM produtos WHERE DescCateogriaProduto = 'churn_model';