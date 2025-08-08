CREATE TABLE fato_questionario_socioeconomico (
    NU_INSCRICAO BIGINT NOT NULL,   
    NU_ANO INT NOT NULL,            
    Q001 CHAR(1),          
    Q002 CHAR(1),          
    Q003 CHAR(1),          
    Q004 CHAR(1),          
    Q005 CHAR(1),          
    Q006 CHAR(1),          
    Q007 CHAR(1),          
    Q008 CHAR(1),
    Q009 CHAR(1),
    Q010 CHAR(1),
    Q011 CHAR(1),
    Q012 CHAR(1),
    Q013 CHAR(1),
    Q014 CHAR(1),
    Q015 CHAR(1),
    Q016 CHAR(1),
    Q017 CHAR(1),
    Q018 CHAR(1),
    Q019 CHAR(1),
    Q020 CHAR(1),
    Q021 CHAR(1),
    Q022 CHAR(1),
    Q023 CHAR(1),
    Q024 CHAR(1),
    Q025 CHAR(1),
    PRIMARY KEY (NU_INSCRICAO, NU_ANO)
);
INSERT INTO fato_questionario_socioeconomico
SELECT NU_INSCRICAO
      ,NU_ANO
      ,Q001 ,Q002 ,Q003 ,Q004 ,Q005
      ,Q006 ,Q007 ,Q008 ,Q009 ,Q010
      ,Q011 ,Q012 ,Q013 ,Q014 ,Q015
      ,Q016 ,Q017 ,Q018 ,Q019 ,Q020
      ,Q021 ,Q022 ,Q023 ,Q024 ,Q025
FROM microdados_enem_2020
WHERE NOT (
    Q001 IS NULL OR Q002 IS NULL OR Q003 IS NULL OR Q004 IS NULL OR Q005 IS NULL OR
    Q006 IS NULL OR Q007 IS NULL OR Q008 IS NULL OR Q009 IS NULL OR Q010 IS NULL OR
    Q011 IS NULL OR Q012 IS NULL OR Q013 IS NULL OR Q014 IS NULL OR Q015 IS NULL OR
    Q016 IS NULL OR Q017 IS NULL OR Q018 IS NULL OR Q019 IS NULL OR Q020 IS NULL OR
    Q021 IS NULL OR Q022 IS NULL OR Q023 IS NULL OR Q024 IS NULL OR Q025 IS NULL
);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q001 FOREIGN KEY (Q001)
REFERENCES dim_grau_escolaridade(CO_ESCOLARIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q002 FOREIGN KEY (Q002)
REFERENCES dim_grau_escolaridade(CO_ESCOLARIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q003 FOREIGN KEY (Q003)
REFERENCES dim_grupo_ocupacao(CO_OCUPACAO);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q004 FOREIGN KEY (Q004)
REFERENCES dim_grupo_ocupacao(CO_OCUPACAO);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q006 FOREIGN KEY (Q006)
REFERENCES dim_renda_mensal(CO_RENDA);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q007 FOREIGN KEY (Q007)
REFERENCES dim_servico_domiciliar(CO_SERVICO);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q008 FOREIGN KEY (Q008)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q009 FOREIGN KEY (Q009)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q010 FOREIGN KEY (Q010)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q011 FOREIGN KEY (Q011)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q012 FOREIGN KEY (Q012)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q013 FOREIGN KEY (Q013)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q014 FOREIGN KEY (Q014)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q015 FOREIGN KEY (Q015)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q016 FOREIGN KEY (Q016)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q017 FOREIGN KEY (Q017)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q018 FOREIGN KEY (Q018)
REFERENCES dim_sim_ou_nao(CO_A_B);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q019 FOREIGN KEY (Q019)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q020 FOREIGN KEY (Q020)
REFERENCES dim_sim_ou_nao(CO_A_B);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q021 FOREIGN KEY (Q021)
REFERENCES dim_sim_ou_nao(CO_A_B);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q022 FOREIGN KEY (Q022)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q023 FOREIGN KEY (Q023)
REFERENCES dim_sim_ou_nao(CO_A_B);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q024 FOREIGN KEY (Q024)
REFERENCES dim_bens_e_infraestrutura(CO_QUANTIDADE);

ALTER TABLE fato_questionario_socioeconomico
ADD CONSTRAINT fk_q025 FOREIGN KEY (Q025)
REFERENCES dim_sim_ou_nao(CO_A_B);