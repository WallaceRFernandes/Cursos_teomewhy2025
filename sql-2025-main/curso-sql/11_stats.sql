
SELECT avg(QtdePontos)  AS MediaCarteira,
       min(QtdePontos)  AS MinCarteira,
       max(QtdePontos)  AS MaxCarteira,
       sum(FlTwitch),
       sum(FlEmail)
FROM clientes

