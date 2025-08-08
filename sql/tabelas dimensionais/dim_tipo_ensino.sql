CREATE TABLE dim_tipo_ensino (
    CO_TIPO_ENSINO int NOT NULL,
    DESC_TIPO_ENSINO VARCHAR(100) NOT NULL,
    PRIMARY KEY (CO_TIPO_ENSINO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_tipo_ensino (CO_TIPO_ENSINO, DESC_TIPO_ENSINO)
VALUES
    (1, 'Ensino Regular'),
    (2, 'Educação Especial - Modalidade Substitutiva'),
    (3, 'Educação de Jovens e Adultos');