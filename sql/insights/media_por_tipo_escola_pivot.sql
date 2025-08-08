DROP TABLE viz_media_por_tipo_escola_pivot

CREATE TABLE viz_media_por_tipo_escola_pivot AS
SELECT TIPO_ESCOLA                    
      ,'CN'                   AS COD_DISCIPLINA
      ,'Ciências da Natureza' AS DISCIPLINA
      ,COUNT(NOTA_CN)         AS QTD_NOTAS
      ,ROUND(AVG(NOTA_CN), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_CN IS NOT NULL
GROUP BY TIPO_ESCOLA

UNION

SELECT TIPO_ESCOLA                    
      ,'CH'                   AS COD_DISCIPLINA
      ,'Ciências Humanas'     AS DISCIPLINA
      ,COUNT(NOTA_CH)         AS QTD_NOTAS
      ,ROUND(AVG(NOTA_CH), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_CH IS NOT NULL
GROUP BY TIPO_ESCOLA

UNION

SELECT TIPO_ESCOLA                    
      ,'LC'                   AS COD_DISCIPLINA
      ,'Linguagens e Códigos' AS DISCIPLINA
      ,COUNT(NOTA_LC)         AS QTD_NOTAS
      ,ROUND(AVG(NOTA_LC), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_LC IS NOT NULL
GROUP BY TIPO_ESCOLA

UNION

SELECT TIPO_ESCOLA                    
      ,'MT'                   AS COD_DISCIPLINA
      ,'Matemática'           AS DISCIPLINA
      ,COUNT(NOTA_MT)         AS QTD_NOTAS
      ,ROUND(AVG(NOTA_MT), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_MT IS NOT NULL
GROUP BY TIPO_ESCOLA

UNION

SELECT TIPO_ESCOLA                    
      ,'RD'                        AS COD_DISCIPLINA
      ,'Redação'                   AS DISCIPLINA
      ,COUNT(NOTA_REDACAO)         AS QTD_NOTAS
      ,ROUND(AVG(NOTA_REDACAO), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_REDACAO IS NOT NULL
GROUP BY TIPO_ESCOLA