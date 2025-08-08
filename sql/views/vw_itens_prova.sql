CREATE VIEW vw_itens_prova AS
SELECT NU_ANO             'ANO'
      ,a.CO_POSICAO       'POSICAO_ITEM'
      ,a.SG_AREA          'COD_AREA_CONHECIMENTO'
      ,b.DESC_AREA        'AREA_CONHECIMENTO'
      ,a.CO_ITEM          'ITEM'
      ,a.TX_GABARITO      'GABARITO_ITEM'
      ,a.CO_HABILIDADE    'HABILIDADE_ITEM'
      ,c.RESPOSTA_SIM_NAO 'ITEM_ABANDONADO'
      ,d.DESC_MOTIVO      'MOTIVO_ABANDONO'
      ,a.NU_PARAM_A       'PARAMETRO_DISCRIMINACAO'
      ,a.NU_PARAM_B       'PARAMETRO_DIFICULDADE'
      ,a.NU_PARAM_C       'PARAMETRO_ACERTO'
      ,e.DESC_COR_PROVA   'COR_PROVA'
      ,a.CO_PROVA         'IDENTIFICADOR_PROVA'
      ,f.DESC_IDIOMA      'LINGUA_ESTRANGEIRA'
      ,g.RESPOSTA_SIM_NAO 'ITEM_ADAPTADO'
      ,h.DESC_IDIOMA      'VERSAO_DIGITAL'
FROM fato_itens_prova a
LEFT JOIN dim_area_conhecimento b  ON a.SG_AREA = b.CO_AREA
LEFT JOIN dim_sim_ou_nao c         ON a.IN_ITEM_ABAN = c.CO_ZERO_UM
LEFT JOIN dim_motivo_abandono d    ON a.IN_ITEM_ABAN = d.CO_MOTIVO
LEFT JOIN dim_cor_prova e          ON a.CO_COR_PROVA = e.CO_COR_PROVA
LEFT JOIN dim_lingua_estrangeira f ON a.TP_LINGUA = f.CO_IDIOMA
LEFT JOIN dim_sim_ou_nao g         ON a.IN_ITEM_ADAPTADO = g.CO_ZERO_UM
LEFT JOIN dim_lingua_estrangeira h ON a.TP_VERSAO_DIGITAL = h.CO_IDIOMA;
