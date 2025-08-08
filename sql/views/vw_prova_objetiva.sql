CREATE VIEW vw_prova_objetiva AS
WITH tbCores AS (
     SELECT x.CO_TIPO_PROVA
           ,z.DESC_COR_PROVA 
     FROM dim_tipo_prova_objetiva x
     LEFT JOIN dim_cor_prova z ON z.CO_COR_PROVA = x.CO_COR_PROVA
     )
SELECT a.NU_INSCRICAO    'INSCRICAO'
      ,a.NU_ANO          'ANO'
      ,b.DESC_PRESENCA   'PRESENCA_CN'
      ,c.DESC_PRESENCA   'PRESENCA_CH'
      ,d.DESC_PRESENCA   'PRESENCA_LC'
      ,e.DESC_PRESENCA   'PRESENCA_MT'
      ,f.DESC_COR_PROVA  'COR_PROVA_CN'
      ,g.DESC_COR_PROVA  'COR_PROVA_CH'
      ,h.DESC_COR_PROVA  'COR_PROVA_LC'
      ,i.DESC_COR_PROVA  'COR_PROVA_MT'
      ,a.NU_NOTA_CN      'NOTA_CN'
      ,a.NU_NOTA_CH      'NOTA_CH'
      ,a.NU_NOTA_LC      'NOTA_LC'
      ,a.NU_NOTA_MT      'NOTA_MT'
      ,a.TX_RESPOSTAS_CN 'RESPOSTAS_CN'
      ,a.TX_RESPOSTAS_CH 'RESPOSTAS_CH'
      ,a.TX_RESPOSTAS_LC 'RESPOSTAS_LC'
      ,a.TX_RESPOSTAS_MT 'RESPOSTAS_MT'
      ,a.TX_GABARITO_CN  'GABARITO_CN'
      ,a.TX_GABARITO_CH  'GABARITO_CH'
      ,a.TX_GABARITO_LC  'GABARITO_LC'
      ,a.TX_GABARITO_MT  'GABARITO_MT'
      ,j.DESC_IDIOMA     'LINGUA_ESTRANGEIRA'
FROM fato_prova_objetiva a
LEFT JOIN dim_presenca_prova_objetiva b ON a.TP_PRESENCA_CN = b.CO_PRESENCA
LEFT JOIN dim_presenca_prova_objetiva c ON a.TP_PRESENCA_CH = c.CO_PRESENCA
LEFT JOIN dim_presenca_prova_objetiva d ON a.TP_PRESENCA_LC = d.CO_PRESENCA
LEFT JOIN dim_presenca_prova_objetiva e ON a.TP_PRESENCA_MT = e.CO_PRESENCA
LEFT JOIN tbCores f                     ON a.CO_PROVA_CN = f.CO_TIPO_PROVA
LEFT JOIN tbCores g                     ON a.CO_PROVA_CH = g.CO_TIPO_PROVA
LEFT JOIN tbCores h                     ON a.CO_PROVA_LC = h.CO_TIPO_PROVA
LEFT JOIN tbCores i                     ON a.CO_PROVA_MT = i.CO_TIPO_PROVA
LEFT JOIN dim_lingua_estrangeira j      ON a.TP_LINGUA = j.CO_IDIOMA;