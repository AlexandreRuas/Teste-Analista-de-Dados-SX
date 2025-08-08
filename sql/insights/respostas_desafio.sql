-- 1. Qual a escola com a maior média de notas (ENEM 2020?

-- Observações:
-- Infelizmente, os microdados do ENEM 2020 não incluem o nome ou o código direto das escolas.
-- Por isso, em vez de calcular a maior média por escola, opto por calcular a maior média 
-- das escolas localizadas em um determinado município, utilizando o código de município como 
-- referência. Isso representa um total de 5.425 municípios distintos, considerando todas as escolas 
-- das redes (municipais, estaduais, federais e privadas), independentemente de estarem situadas em 
-- áreas urbanas ou rurais, e se estão em funcionamento ou não.

SELECT DISTINCT COD_MUN_ESCOLA
FROM vw_microdados
WHERE ANO = 2020
  AND COD_MUN_ESCOLA IS NOT NULL
  AND NOTA_CN IS NOT NULL
  AND NOTA_CH IS NOT NULL
  AND NOTA_LC IS NOT NULL
  AND NOTA_MT IS NOT NULL
  AND NOTA_REDACAO IS NOT NULL

-- Esse código identifica qual município teve, em média, o melhor desempenho escolar entre 
-- os estudantes do ENEM 2020, desde que todas as notas estejam registradas.
SELECT COD_MUN_ESCOLA
      ,MUN_ESCOLA
      ,UF_ESCOLA
      ,ROUND(AVG((NOTA_CN + NOTA_CH + NOTA_LC + NOTA_MT + NOTA_REDACAO) / 5.0), 2) 'MEDIA_ESCOLA'
FROM vw_microdados
WHERE ANO = 2020
  AND COD_MUN_ESCOLA IS NOT NULL
  AND NOTA_CN IS NOT NULL
  AND NOTA_CH IS NOT NULL
  AND NOTA_LC IS NOT NULL
  AND NOTA_MT IS NOT NULL
  AND NOTA_REDACAO IS NOT NULL
GROUP BY COD_MUN_ESCOLA, MUN_ESCOLA, UF_ESCOLA
ORDER BY MEDIA_ESCOLA DESC
LIMIT 1;

-- Resposta: 
-- A maior média de notas por município é 706.56, 
-- considerando as escolas localizadas no município de Santana do Manhuaçu em Minas Gerais (MG).
-- =============================================================================================

-- 2. Qual o aluno (participante) com a maior média de notas e o valor dessa média (ENEM 2020?

SELECT INSCRICAO
      ,ROUND((NOTA_CN + NOTA_CH + NOTA_LC + NOTA_MT + NOTA_REDACAO) / 5.0, 2) 'MEDIA_PARTICIPANTE'
FROM vw_microdados
WHERE ANO = 2020
  AND NOTA_CN IS NOT NULL
  AND NOTA_CH IS NOT NULL
  AND NOTA_LC IS NOT NULL
  AND NOTA_MT IS NOT NULL
  AND NOTA_REDACAO IS NOT NULL
GROUP BY INSCRICAO
ORDER BY MEDIA_PARTICIPANTE DESC
LIMIT 1;

-- Resposta: 
-- O participante com a maior média de notas é o inscrito de número 200005996961,
-- que obteve uma média final de 858.58 pontos.
-- ==============================================================================

-- 3. Qual a média geral (ENEM 2020)?

SELECT AVG((NOTA_CN + NOTA_CH + NOTA_LC + NOTA_MT + NOTA_REDACAO) / 5) 'MEDIA_GERAL'
FROM vw_microdados
WHERE ANO = 2020
  AND NOTA_CN IS NOT NULL
  AND NOTA_CH IS NOT NULL
  AND NOTA_LC IS NOT NULL
  AND NOTA_MT IS NOT NULL
  AND NOTA_REDACAO IS NOT NULL

-- Resposta:
-- A média geral de notas é 526.58.
-- ================================

-- 4. Qual o % de ausentes (ENEM 2020)?

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

-- Resposta:
-- O percentual de inscritos que faltaram as quatro provas é: 52.15%.
-- ==================================================================

-- 5. Qual o número total de Inscritos (ENEM 2020)?

SELECT COUNT(INSCRICAO) 'TOTAL'
FROM vw_participante
WHERE ANO = 2020

-- Resposta:
-- Total de inscritos: 5.783.109.
-- ==============================

-- 6. Qual a média por disciplina (ENEM 2020)?

SELECT ROUND(AVG(NOTA_CN), 2)      'MEDIA_CN'
      ,ROUND(AVG(NOTA_CH), 2)      'MEDIA_CH'
      ,ROUND(AVG(NOTA_LC), 2)      'MEDIA_LC'
      ,ROUND(AVG(NOTA_MT), 2)      'MEDIA_MT'
      ,ROUND(AVG(NOTA_REDACAO), 2) 'MEDIA_REDACAO'
FROM vw_microdados
WHERE ANO = 2020
  AND NOTA_CN IS NOT NULL
  AND NOTA_CH IS NOT NULL
  AND NOTA_LC IS NOT NULL
  AND NOTA_MT IS NOT NULL
  AND NOTA_REDACAO IS NOT NULL

-- Resposta:
-- Média de notas da prova de Ciências da Natureza (CN): 490.53
-- Média de notas da prova de Ciências Humanas (CH): 514.29
-- Média de notas da prova de Linguagens e Códigos (LC): 526.02
-- Média de notas da prova de Matemática (MT): 520.73
-- Média de notas da Redação: 581.34
-- ============================================================

-- 7.	Qual a média por Sexo (ENEM 2020)?

SELECT GENERO
      ,ROUND(AVG(
          CASE WHEN NOTA_CN IS NOT NULL 
                AND NOTA_CH IS NOT NULL 
                AND NOTA_LC IS NOT NULL 
                AND NOTA_MT IS NOT NULL 
                AND NOTA_REDACAO IS NOT NULL 
               THEN (NOTA_CN + NOTA_CH + NOTA_LC + NOTA_MT + NOTA_REDACAO) / 5.0
          END
      ), 2) 'MEDIA'
FROM vw_microdados
WHERE ANO = 2020
  AND GENERO IN ('F', 'M')
GROUP BY GENERO;

-- Resposta:
-- Média das notas dos participantes que se identificaram com o gênero feminino: 521.24.
-- Média das notas dos participantes que se identificaram com o gênero masculino: 534.73.
-- ======================================================================================

--8. Qual a média por Etnia (ENEM 2020)?

SELECT COR_RACA
      ,ROUND(AVG(
          CASE WHEN NOTA_CN IS NOT NULL 
                AND NOTA_CH IS NOT NULL 
                AND NOTA_LC IS NOT NULL 
                AND NOTA_MT IS NOT NULL 
                AND NOTA_REDACAO IS NOT NULL 
               THEN (NOTA_CN + NOTA_CH + NOTA_LC + NOTA_MT + NOTA_REDACAO) / 5.0
          END
      ), 2) 'MEDIA'
FROM vw_microdados
WHERE ANO = 2020
  AND COR_RACA IN ('Branca', 'Preta', 'Parda', 'Amarela', 'Indígena') 
GROUP BY COR_RACA;

-- Resposta:
-- Média das notas dos participantes que se declararam como brancos: 556.53.
-- Média das notas dos participantes que se declararam como pretos: 500.87.
-- Média das notas dos participantes que se declararam como pardos: 508.66
-- Média das notas dos participantes que se declararam como amarelos: 524.94.
-- Média das notas dos participantes que se declararam como indígenas: 472.84.
-- ======================================================================================
