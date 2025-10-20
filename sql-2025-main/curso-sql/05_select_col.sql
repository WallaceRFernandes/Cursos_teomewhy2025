SELECT 
    IdCliente, 
    QtdePontos, 
    QtdePontos + 10 AS QtdePontosPLUS10,
    DtCriacao,
    datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,
    strftime( '%w', datetime(substr(DtCriacao, 1, 19))) AS DiaDaSemana 
    FROM clientes