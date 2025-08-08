CREATE TABLE dim_servico_domiciliar (
    CO_SERVICO CHAR(1) NOT NULL,
    DESC_SERVICO VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_SERVICO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_servico_domiciliar (CO_SERVICO, DESC_SERVICO)
VALUES
    ('A', 'Não.'),
    ('B', 'Sim, um ou dois dias por semana.'),
    ('C', 'Sim, três ou quatro dias por semana.'),
    ('D', 'Sim, pelo menos cinco dias por semana.');