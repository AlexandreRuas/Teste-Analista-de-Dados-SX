CREATE VIEW vw_questionario AS
SELECT a.NU_INSCRICAO      'INSCRICAO'
      ,a.NU_ANO            'ANO'
      -- Grau de escolaridade dos responsáveis: pai ou homem responsável, e mãe ou mulher responsável pelo candidato.
      ,b.DESC_ESCOLARIDADE 'ESCOLARIDADE_PAI'
      ,c.DESC_ESCOLARIDADE 'ESCOLARIDADE_MAE'
      -- Ocupação dos responsáveis: pai ou homem responsável, e mãe ou mulher responsável pelo candidato.
      ,d.GRUPO_OCUPACAO    'GRUPO_OCUPACAO_PAI'
      ,d.DESC_OCUPACAO     'OCUPACAO_PAI'
      ,e.GRUPO_OCUPACAO    'GRUPO_OCUPACAO_MAE'
      ,e.DESC_OCUPACAO     'OCUPACAO_MAE'
      -- Outros dados
      ,a.Q005              'OCUPANTE_RESIDENCIA'
      ,f.DESC_RENDA        'RENDA_FAMILIAR'
      ,g.DESC_SERVICO      'PESSOA_EMP_DOMESTICA'
      -- Bens e infraestrutura
      ,h.DESC_QUANTIDADE   'BANHEIRO'
      ,i.DESC_QUANTIDADE   'QUARTO'
      ,j.DESC_QUANTIDADE   'CARRO'
      ,k.DESC_QUANTIDADE   'MOTOCICLETA'
      ,l.DESC_QUANTIDADE   'GELADEIRA'
      ,m.DESC_QUANTIDADE   'FREEZER'
      ,n.DESC_QUANTIDADE   'MAQ_LAVAR_ROUPA'
      ,o.DESC_QUANTIDADE   'MAQ_SECAR_ROUPA'
      ,p.DESC_QUANTIDADE   'MICRO_ONDAS'
      ,q.DESC_QUANTIDADE   'MAQ_LAVAR_LOUCA'
      ,r.RESPOSTA_SIM_NAO  'ASPIRADOR_PO'
      ,s.DESC_QUANTIDADE   'TV_CORES'
      ,t.RESPOSTA_SIM_NAO  'DVD'
      ,u.RESPOSTA_SIM_NAO  'TV_ASSINATURA'
      ,v.DESC_QUANTIDADE   'TEL_CELULAR'
      ,w.RESPOSTA_SIM_NAO  'TEL_FIXO'
      ,x.DESC_QUANTIDADE   'COMPUTADOR'
      ,y.RESPOSTA_SIM_NAO  'INTERNET'
FROM fato_questionario a
LEFT JOIN dim_grau_escolaridade b     ON a.Q001 = b.CO_ESCOLARIDADE
LEFT JOIN dim_grau_escolaridade c     ON a.Q002 = c.CO_ESCOLARIDADE
LEFT JOIN dim_grupo_ocupacao d        ON a.Q003 = d.CO_OCUPACAO
LEFT JOIN dim_grupo_ocupacao e        ON a.Q004 = e.CO_OCUPACAO
LEFT JOIN dim_renda_mensal f          ON a.Q006 = f.CO_RENDA
LEFT JOIN dim_servico_domiciliar g    ON a.Q007 = g.CO_SERVICO
LEFT JOIN dim_bens_e_infraestrutura h ON a.Q008 = h.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura i ON a.Q009 = i.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura j ON a.Q010 = j.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura k ON a.Q011 = k.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura l ON a.Q012 = l.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura m ON a.Q013 = m.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura n ON a.Q014 = n.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura o ON a.Q015 = o.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura p ON a.Q016 = p.CO_QUANTIDADE
LEFT JOIN dim_bens_e_infraestrutura q ON a.Q017 = q.CO_QUANTIDADE
LEFT JOIN dim_sim_ou_nao r            ON a.Q018 = r.CO_A_B
LEFT JOIN dim_bens_e_infraestrutura s ON a.Q019 = s.CO_QUANTIDADE
LEFT JOIN dim_sim_ou_nao t            ON a.Q020 = t.CO_A_B
LEFT JOIN dim_sim_ou_nao u            ON a.Q021 = u.CO_A_B    
LEFT JOIN dim_bens_e_infraestrutura v ON a.Q022 = v.CO_QUANTIDADE
LEFT JOIN dim_sim_ou_nao w            ON a.Q023 = w.CO_A_B
LEFT JOIN dim_bens_e_infraestrutura x ON a.Q024 = x.CO_QUANTIDADE
LEFT JOIN dim_sim_ou_nao y            ON a.Q025 = y.CO_A_B;