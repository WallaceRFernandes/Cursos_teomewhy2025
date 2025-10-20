SELECT
    count(*),
    count(1)
FROM clientes;

SELECT DISTINCT FlTwitch, FlEmail
FROM clientes;

SELECT count(DISTINCT IdCliente)
FROM clientes;