DROP TABLE viz_media_por_estado_pivot

CREATE TABLE viz_media_por_estado_pivot AS
SELECT UF_PROVA                    
      ,'CN'                   AS COD_DISCIPLINA
      ,'Ciências da Natureza' AS DISCIPLINA
      ,ROUND(AVG(NOTA_CN), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_CN IS NOT NULL
GROUP BY UF_PROVA

UNION

SELECT UF_PROVA                    
      ,'CH'                   AS COD_DISCIPLINA
      ,'Ciências Humanas'     AS DISCIPLINA
      ,ROUND(AVG(NOTA_CH), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_CH IS NOT NULL
GROUP BY UF_PROVA

UNION

SELECT UF_PROVA                    
      ,'LC'                   AS COD_DISCIPLINA
      ,'Linguagens e Códigos' AS DISCIPLINA
      ,ROUND(AVG(NOTA_LC), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_LC IS NOT NULL
GROUP BY UF_PROVA

UNION

SELECT UF_PROVA                    
      ,'MT'                   AS COD_DISCIPLINA
      ,'Matemática'           AS DISCIPLINA
      ,ROUND(AVG(NOTA_MT), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_MT IS NOT NULL
GROUP BY UF_PROVA

UNION

SELECT UF_PROVA                    
      ,'RD'                        AS COD_DISCIPLINA
      ,'Redação'                   AS DISCIPLINA
      ,ROUND(AVG(NOTA_REDACAO), 2) AS MEDIA
FROM vw_microdados
WHERE NOTA_REDACAO IS NOT NULL
GROUP BY UF_PROVA