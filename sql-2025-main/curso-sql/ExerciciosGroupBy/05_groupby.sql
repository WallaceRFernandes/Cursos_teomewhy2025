--Qual o valor médio de pontos positivos por dia?


-- SELECT *
-- FROM clientes;

-- SELECT date(substr(DtAtualizacao, 1, 10)) AS Dia,
--        SUM(QtdePontos) AS pontos_positivos
-- FROM clientes
-- WHERE QtdePontos > 0
-- GROUP BY date(substr(DtAtualizacao, 1, 10));




-- SELECT AVG(pontos_positivos) AS MediaPontosPositivosDia
-- FROM (
--     SELECT 
--         date(substr(DtAtualizacao, 1, 10)) AS Dia,
--         SUM(QtdePontos) AS pontos_positivos
--     FROM clientes
--     WHERE QtdePontos > 0
--     GROUP BY date(substr(DtAtualizacao, 1, 10))
-- ) PontosPositivosDia;


SELECT sum(QtdePontos) AS totalpontos,
       count(DISTINCT substr(DtCriacao,1,10)) AS QtdeDiasUnicos,
       sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS Media
       
FROM transacoes
WHERE QtdePontos > 0;
