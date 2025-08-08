CREATE TABLE dim_presenca_prova_objetiva (
    CO_PRESENCA int NOT NULL,
    DESC_PRESENCA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_PRESENCA)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_presenca_prova_objetiva (CO_PRESENCA, DESC_PRESENCA)
VALUES
    (0, 'Faltou à prova'),
    (1, 'Presente na prova'),
    (2, 'Eliminado na prova');