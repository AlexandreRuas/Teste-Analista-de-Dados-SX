CREATE VIEW vw_participante AS
SELECT a.NU_INSCRICAO       'INSCRICAO'
      ,a.NU_ANO             'ANO'
      ,b.DESC_FAIXA_ETARIA  'FAIXA_ETARIA'
      ,a.TP_SEXO            'GENERO'  
      ,c.DESC_ESTADO_CIVIL  'ESTADO_CIVIL'
      ,d.DESC_COR_RACA      'COR_RACA'
      ,e.DESC_NACIONALIDADE 'NACIONALIDADE'
      ,f.DESC_CONCLUSAO     'CONCLUSAO_ENSINO_MEDIO'
      ,g.DESC_ANO_CONCLUSAO 'ANO_CONCLUSAO'
      ,h.DESC_TIPO_ESCOLA   'TIPO_ESCOLA'
      ,i.DESC_TIPO_ENSINO   'TIPO_ENSINO'
      ,j.RESPOSTA_SIM_NAO   'TREINEIRO'
FROM fato_participante a
LEFT JOIN dim_faixa_etaria b       ON a.TP_FAIXA_ETARIA = b.CO_FAIXA_ETARIA
LEFT JOIN dim_estado_civil c       ON a.TP_ESTADO_CIVIL = c.CO_ESTADO_CIVIL
LEFT JOIN dim_cor_raca d           ON a.TP_COR_RACA = d.CO_COR_RACA
LEFT JOIN dim_nacionalidade e      ON a.TP_NACIONALIDADE = e.CO_NACIONALIDADE
LEFT JOIN dim_situacao_conclusao f ON a.TP_ST_CONCLUSAO = f.CO_CONCLUSAO
LEFT JOIN dim_ano_conclusao g      ON a.TP_ANO_CONCLUIU = g.CO_ANO_CONCLUSAO
LEFT JOIN dim_tipo_escola h        ON a.TP_ESCOLA = h.CO_TIPO_ESCOLA
LEFT JOIN dim_tipo_ensino i        ON a.TP_ENSINO = i.CO_TIPO_ENSINO
LEFT JOIN dim_sim_ou_nao j         ON a.IN_TREINEIRO = j.CO_ZERO_UM;