CREATE TABLE dim_cor_raca (
    CO_COR_RACA int NOT NULL,
    DESC_COR_RACA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_COR_RACA)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_cor_raca (CO_COR_RACA, DESC_COR_RACA)
VALUES
    (0, 'Não declarado'),
    (1, 'Branca'),
    (2, 'Preta'),
    (3, 'Parda'),
    (4, 'Amarela'),
    (5, 'Indígena');
