CREATE TABLE dim_renda_mensal (
    CO_RENDA CHAR(1) NOT NULL,
    DESC_RENDA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_RENDA)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_renda_mensal (CO_RENDA, DESC_RENDA)
VALUES
    ('A', 'Nenhuma renda'),
    ('B', 'Até R$ 1.045,00'),
    ('C', 'De R$ 1.045,01 até R$ 1.567,50'),
    ('D', 'De R$ 1.567,51 até R$ 2.090,00'),
    ('E', 'De R$ 2.090,01 até R$ 2.612,50'),
    ('F', 'De R$ 2.612,51 até R$ 3.135,00'),
    ('G', 'De R$ 3.135,01 até R$ 4.180,00'),
    ('H', 'De R$ 4.180,01 até R$ 5.225,00'),
    ('I', 'De R$ 5.225,01 até R$ 6.270,00'),
    ('J', 'De R$ 6.270,01 até R$ 7.315,00'),
    ('K', 'De R$ 7.315,01 até R$ 8.360,00'),
    ('L', 'De R$ 8.360,01 até R$ 9.405,00'),
    ('M', 'De R$ 9.405,01 até R$ 10.450,00'),
    ('N', 'De R$ 10.450,01 até R$ 12.540,00'),
    ('O', 'De R$ 12.540,01 até R$ 15.675,00'),
    ('P', 'De R$ 15.675,01 até R$ 20.900,00'),
    ('Q', 'Acima de R$ 20.900,00');