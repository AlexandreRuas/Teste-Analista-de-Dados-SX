CREATE TABLE viz_dist_notas_cn AS
SELECT COUNT(*)                 AS QTDE
      ,FLOOR(NOTA_CN / 25) * 25 AS FAIXA_NOTA_CN
FROM vw_microdados
WHERE NOTA_CN IS NOT NULL
GROUP BY NOTA_CN

CREATE TABLE viz_dist_notas_ch AS
SELECT COUNT(*)                 AS QTDE
      ,FLOOR(NOTA_CH / 25) * 25 AS FAIXA_NOTA_CH
FROM vw_microdados
WHERE NOTA_CH IS NOT NULL
GROUP BY NOTA_CH

CREATE TABLE viz_dist_notas_lc AS
SELECT COUNT(*)                 AS QTDE
      ,FLOOR(NOTA_LC / 25) * 25 AS FAIXA_NOTA_LC
FROM vw_microdados
WHERE NOTA_LC
GROUP BY NOTA_LC

CREATE TABLE viz_dist_notas_mt AS
SELECT COUNT(*)                 AS QTDE
      ,FLOOR(NOTA_MT / 25) * 25 AS FAIXA_NOTA_MT
FROM vw_microdados
WHERE NOTA_MT IS NOT NULL
GROUP BY NOTA_MT

CREATE TABLE viz_dist_notas_rd AS
SELECT COUNT(*)                      AS QTDE
      ,FLOOR(NOTA_REDACAO / 25) * 25 AS FAIXA_NOTA_RD
FROM vw_microdados
WHERE NOTA_REDACAO IS NOT NULL
GROUP BY NOTA_REDACAO

------------------------------------------------------
------------------------------------------------------

CREATE TABLE viz_dist_notas AS
SELECT COUNT(*)                 AS QTDE
      ,'CN'                     AS COD_DISCIPLINA
      ,'Ciências da Natureza'   AS NOME_DISCIPLINA
      ,FLOOR(NOTA_CN / 25) * 25 AS FAIXA_NOTA
FROM vw_microdados
WHERE NOTA_CN IS NOT NULL
GROUP BY FAIXA_NOTA

UNION

SELECT COUNT(*)                 AS QTDE
      ,'CH'                     AS COD_DISCIPLINA
      ,'Ciências Humanas'   AS NOME_DISCIPLINA
      ,FLOOR(NOTA_CH / 25) * 25 AS FAIXA_NOTA
FROM vw_microdados
WHERE NOTA_CH IS NOT NULL
GROUP BY FAIXA_NOTA

UNION

SELECT COUNT(*)                 AS QTDE
      ,'LC'                     AS COD_DISCIPLINA
      ,'Linguagens e Códigos'   AS NOME_DISCIPLINA
      ,FLOOR(NOTA_LC / 25) * 25 AS FAIXA_NOTA
FROM vw_microdados
WHERE NOTA_LC
GROUP BY FAIXA_NOTA

UNION

SELECT COUNT(*)                 AS QTDE
      ,'MT'                     AS COD_DISCIPLINA
      ,'Matemática'             AS NOME_DISCIPLINA
      ,FLOOR(NOTA_MT / 25) * 25 AS FAIXA_NOTA
FROM vw_microdados
WHERE NOTA_MT IS NOT NULL
GROUP BY FAIXA_NOTA

UNION

SELECT COUNT(*)                      AS QTDE
      ,'RD'                          AS COD_DISCIPLINA
      ,'Redação'                     AS NOME_DISCIPLINA
      ,FLOOR(NOTA_REDACAO / 25) * 25 AS FAIXA_NOTA
FROM vw_microdados
WHERE NOTA_REDACAO IS NOT NULL
GROUP BY FAIXA_NOTA