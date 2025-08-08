CREATE VIEW vw_escola AS
SELECT a.NU_INSCRICAO       'INSCRICAO'
      ,a.NU_ANO             'ANO'
      ,a.CO_MUNICIPIO_ESC   'COD_MUNICIPIO'
      ,b.NO_MUNICIPIO       'MUNICIPIO'
      ,c.SG_UF              'UF'
      ,d.DESC_DEP_ADM       'DEPENDENCIA_ADM'
      ,e.DESC_LOCALIZACAO   'LOCALIZACAO'
      ,f.DESC_FUNCIONAMENTO 'FUNCIONAMENTO'
FROM fato_escola a
LEFT JOIN dim_municipio b              ON a.CO_MUNICIPIO_ESC = b.CO_MUNICIPIO
LEFT JOIN dim_uf c                     ON b.CO_UF = c.CO_UF
LEFT JOIN dim_dependencia_adm_escola d ON a.TP_DEPENDENCIA_ADM_ESC = d.CO_DEP_ADM
LEFT JOIN dim_localizacao_escola e     ON a.TP_LOCALIZACAO_ESC = e.CO_LOCALIZACAO
LEFT JOIN dim_funcionamento_escola f   ON a.TP_SIT_FUNC_ESC = f.CO_FUNCIONAMENTO;