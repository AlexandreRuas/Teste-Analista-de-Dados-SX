CREATE TABLE dim_grau_escolaridade (
    CO_ESCOLARIDADE CHAR(1) NOT NULL,
    DESC_ESCOLARIDADE VARCHAR(255) NOT NULL,
    PRIMARY KEY (CO_ESCOLARIDADE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_grau_escolaridade (CO_ESCOLARIDADE, DESC_ESCOLARIDADE)
VALUES
    ('A', 'Nunca estudou.'),
    ('B', 'Não completou a 4ª série/5º ano do Ensino Fundamental.'),
    ('C', 'Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do Ensino Fundamental.'),
    ('D', 'Completou a 8ª série/9º ano do Ensino Fundamental, mas não completou o Ensino Médio.'),
    ('E', 'Completou o Ensino Médio, mas não completou a Faculdade.'),
    ('F', 'Completou a Faculdade, mas não completou a Pós-graduação.'),
    ('G', 'Completou a Pós-graduação.'),
    ('H', 'Não sei.');