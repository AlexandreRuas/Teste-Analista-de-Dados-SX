CREATE TABLE dim_bens_e_infraestrutura (
    CO_QUANTIDADE CHAR(1) NOT NULL,
    DESC_QUANTIDADE VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_QUANTIDADE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_bens_e_infraestrutura (CO_QUANTIDADE, DESC_QUANTIDADE)
VALUES
    ('A', 'Não.'),
    ('B', 'Sim, um.'),
    ('C', 'Sim, dois.'),
    ('D', 'Sim, três.'),
    ('E', 'Sim, quatro ou mais.');