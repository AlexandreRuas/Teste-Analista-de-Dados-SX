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