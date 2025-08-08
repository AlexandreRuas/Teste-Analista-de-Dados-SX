CREATE TABLE dim_situacao_conclusao (
    CO_CONCLUSAO int NOT NULL,
    DESC_CONCLUSAO VARCHAR(100) NOT NULL,
    PRIMARY KEY (CO_CONCLUSAO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_situacao_conclusao (CO_CONCLUSAO, DESC_CONCLUSAO)
VALUES
    (1, 'Já concluí o Ensino Médio'),
    (2, 'Estou cursando e concluirei o Ensino Médio em 2020'),
    (3, 'Estou cursando e concluirei o Ensino Médio após 2020'),
    (4, 'Não concluí e não estou cursando o Ensino Médio');
