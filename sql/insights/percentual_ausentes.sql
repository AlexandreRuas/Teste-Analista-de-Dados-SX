-- Total de inscritos: 5.783.109.
WITH tbTotal AS (
      SELECT COUNT(INSCRICAO) 'TOTAL'
      FROM vw_participante
      WHERE ANO = 2020
),
-- Total de inscritos que faltaram a todas as provas (CN, CH, LC e MT): 3.016.082.   
     tbAusentes AS (
      SELECT COUNT(NU_INSCRICAO) 'AUSENTES'
      FROM fato_prova_objetiva
      WHERE NU_ANO = 2020
        AND TP_PRESENCA_CN = 0
        AND TP_PRESENCA_CH = 0
        AND TP_PRESENCA_LC = 0
        AND TP_PRESENCA_MT = 0
)
-- Percentual de inscritos ausentes nas quatro provas.
SELECT t.TOTAL
      ,a.AUSENTES
      ,ROUND(100.0 * a.AUSENTES / t.TOTAL, 2) 'PERCENTUAL'
FROM tbTotal t, tbAusentes a;