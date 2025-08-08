CREATE VIEW vw_local_prova AS
SELECT NU_INSCRICAO       'INSCRICAO'
      ,NU_ANO             'ANO'
      ,CO_MUNICIPIO_PROVA 'COD_MUNICIPIO'
      ,b.NO_MUNICIPIO     'MUNICIPIO'
      ,c.SG_UF            'UF'
FROM fato_local_prova a
LEFT JOIN dim_municipio b ON a.CO_MUNICIPIO_PROVA = b.CO_MUNICIPIO
LEFT JOIN dim_uf c ON b.CO_UF = c.CO_UF;