CREATE TABLE dim_nacionalidade (
    CO_NACIONALIDADE int NOT NULL,
    DESC_NACIONALIDADE VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_NACIONALIDADE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_nacionalidade (CO_NACIONALIDADE, DESC_NACIONALIDADE)
VALUES
    (0, 'Não informado'),
    (1, 'Brasileiro(a)'),
    (2, 'Brasileiro(a) Naturalizado(a)'),
    (3, 'Estrangeiro(a)'),
    (4, 'Brasileiro(a) Nato(a), nascido(a) no exterior');
    