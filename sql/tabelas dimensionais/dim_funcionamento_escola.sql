CREATE TABLE dim_funcionamento_escola (
    CO_FUNCIONAMENTO int NOT NULL,
    DESC_FUNCIONAMENTO VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_FUNCIONAMENTO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_funcionamento_escola (CO_FUNCIONAMENTO, DESC_FUNCIONAMENTO)
VALUES
    (1, 'Em atividade'),
    (2, 'Paralisada'),
    (3, 'Extinta'),
    (4, 'Escola extinta em anos anteriores');