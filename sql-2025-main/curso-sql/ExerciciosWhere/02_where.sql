-- Lista de pedidos realizados no fim de semana;

-- lista filtrada para finais de semana a partir do datetime do computador
SELECT
  IdTransacao,
  datetime(replace(DtCriacao, ' +0000 UTC', 'Z'), 'localtime') AS data_convertida_local,
  CASE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z'), 'localtime'))
    WHEN '0' THEN 'Domingo'
    WHEN '6' THEN 'Sábado'
  END AS dia_nome
FROM transacoes
WHERE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z'), 'localtime')) IN ('0','6');

-- lista filtrada para finais de semana a partir do datetime do computador ordenada por DATA
SELECT
  IdTransacao,
  datetime(replace(DtCriacao, ' +0000 UTC', 'Z'), 'localtime') AS data_convertida_local,
  CASE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z'), 'localtime'))
    WHEN '0' THEN 'Domingo'
    WHEN '6' THEN 'Sábado'
  END AS dia_nome
FROM transacoes
WHERE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z'), 'localtime')) IN ('0','6')
ORDER BY data_convertida_local ASC;

-- lista filtrada para finais de semana a partir do datetime UTC
SELECT
  IdTransacao,
  datetime(replace(DtCriacao, ' +0000 UTC', 'Z')) AS data_convertida_local,
  CASE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z')))
    WHEN '0' THEN 'Domingo'
    WHEN '6' THEN 'Sábado'
  END AS dia_nome
FROM transacoes
WHERE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z'))) IN ('0','6');

-- lista filtrada para finais de semana a partir do datetime UTC ordenada por DATA
SELECT
  IdTransacao,
  datetime(replace(DtCriacao, ' +0000 UTC', 'Z')) AS data_convertida_local,
  CASE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z')))
    WHEN '0' THEN 'Domingo'
    WHEN '6' THEN 'Sábado'
  END AS dia_nome
FROM transacoes
WHERE strftime('%w', datetime(replace(DtCriacao, ' +0000 UTC', 'Z'))) IN ('0','6')
ORDER BY data_convertida_local ASC;