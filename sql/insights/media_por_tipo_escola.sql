DROP TABLE viz_dist_notas_por_tipo_escola

-- Distribuição de notas por tipo de escola
CREATE TABLE viz_dist_notas_por_tipo_escola AS
SELECT TIPO_ESCOLA                 
      ,COUNT(INSCRICAO)            'INSCRITOS'
      ,ROUND(AVG(NOTA_CN), 2)      'MEDIA_CN'
      ,ROUND(AVG(NOTA_CH), 2)      'MEDIA_CH'
      ,ROUND(AVG(NOTA_LC), 2)      'MEDIA_LC'
      ,ROUND(AVG(NOTA_MT), 2)      'MEDIA_MT'
      ,ROUND(AVG(NOTA_REDACAO), 2) 'MEDIA_REDACAO'
FROM vw_microdados
WHERE NOTA_CN IS NOT NULL
  AND NOTA_CH IS NOT NULL
  AND NOTA_LC IS NOT NULL
  AND NOTA_MT IS NOT NULL
  AND NOTA_REDACAO IS NOT NULL
GROUP BY TIPO_ESCOLA;