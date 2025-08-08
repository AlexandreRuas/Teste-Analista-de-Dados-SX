CREATE VIEW vw_microdados AS
SELECT 
       -- Participante
       a.INSCRICAO
      ,a.ANO
      ,a.FAIXA_ETARIA
      ,a.GENERO
      ,a.ESTADO_CIVIL
      ,a.COR_RACA
      ,a.NACIONALIDADE
      ,a.CONCLUSAO_ENSINO_MEDIO
      ,a.ANO_CONCLUSAO
      ,a.TIPO_ESCOLA
      ,a.TIPO_ENSINO
      ,a.TREINEIRO
      -- Escola
      ,b.COD_MUNICIPIO 'COD_MUN_ESCOLA'
      ,b.MUNICIPIO     'MUN_ESCOLA'
      ,b.UF            'UF_ESCOLA'
      ,b.DEPENDENCIA_ADM
      ,b.LOCALIZACAO
      ,b.FUNCIONAMENTO
      -- Local de aplicação da prova
      ,c.COD_MUNICIPIO 'COD_MUN_PROVA'
      ,c.MUNICIPIO     'MUN_PROVA'
      ,c.UF            'UF_PROVA'
      -- Prova objetiva
      ,d.PRESENCA_CN
      ,d.PRESENCA_CH
      ,d.PRESENCA_LC
      ,d.PRESENCA_MT
      ,d.COR_PROVA_CN
      ,d.COR_PROVA_CH
      ,d.COR_PROVA_LC
      ,d.COR_PROVA_MT 
      ,d.NOTA_CN
      ,d.NOTA_CH
      ,d.NOTA_LC
      ,d.NOTA_MT
      ,d.RESPOSTAS_CN
      ,d.RESPOSTAS_CH
      ,d.RESPOSTAS_LC
      ,d.RESPOSTAS_MT
      ,d.GABARITO_CN
      ,d.GABARITO_CH
      ,d.GABARITO_LC
      ,d.GABARITO_MT
      ,d.LINGUA_ESTRANGEIRA
      -- Redação
      ,e.STATUS_REDACAO
      ,e.NOTA_COMP_1
      ,e.NOTA_COMP_2
      ,e.NOTA_COMP_3
      ,e.NOTA_COMP_4
      ,e.NOTA_COMP_5
      ,e.NOTA_REDACAO
      -- Questionário socioeconômico
      ,f.ESCOLARIDADE_PAI
      ,f.ESCOLARIDADE_MAE
      ,f.GRUPO_OCUPACAO_PAI
      ,f.OCUPACAO_PAI
      ,f.GRUPO_OCUPACAO_MAE
      ,f.OCUPACAO_MAE
      ,f.OCUPANTE_RESIDENCIA
      ,f.RENDA_FAMILIAR
      ,f.PESSOA_EMP_DOMESTICA
      ,f.BANHEIRO
      ,f.QUARTO
      ,f.CARRO
      ,f.MOTOCICLETA
      ,f.GELADEIRA
      ,f.FREEZER
      ,f.MAQ_LAVAR_ROUPA
      ,f.MAQ_SECAR_ROUPA
      ,f.MICRO_ONDAS
      ,f.MAQ_LAVAR_LOUCA
      ,f.ASPIRADOR_PO
      ,f.TV_CORES
      ,f.DVD
      ,f.TV_ASSINATURA
      ,f.TEL_CELULAR
      ,f.TEL_FIXO
      ,f.COMPUTADOR
      ,f.INTERNET 
FROM vw_participante a
LEFT JOIN vw_escola b         ON a.INSCRICAO = b.INSCRICAO AND a.ANO = b.ANO
LEFT JOIN vw_local_prova c    ON a.INSCRICAO = c.INSCRICAO AND a.ANO = c.ANO
LEFT JOIN vw_prova_objetiva d ON a.INSCRICAO = d.INSCRICAO AND a.ANO = d.ANO
LEFT JOIN vw_redacao e        ON a.INSCRICAO = e.INSCRICAO AND a.ANO = e.ANO
LEFT JOIN vw_questionario f   ON a.INSCRICAO = f.INSCRICAO AND a.ANO = f.ANO