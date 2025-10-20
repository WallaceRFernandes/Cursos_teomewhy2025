-- SELECT count(DISTINCT IdCliente)
-- FROM transacoes AS t1
-- WHERE
--     t1.IdCliente IN (
--         SELECT DISTINCT IdCliente
--         FROM transacoes
--         WHERE substr (DtCriacao, 1, 10) = '2025-08-25'
-- )
-- AND substr (DtCriacao, 1, 10) = '2025-08-29'
-- ;

WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT IdCLiente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
),
tb_cliente_ultimo_dia AS (
    SELECT FROM DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-29'
),

tb_join AS (
    SELECT t1.IdCliente AS primCliente,
           t2.IdCliente AS ultCliente
    FROM tb_cliente_primeiro_dia AS t1
    LEFT JOIN tb_cliente_ultimo_dia AS t2
)


