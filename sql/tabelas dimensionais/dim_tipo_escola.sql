CREATE TABLE dim_tipo_escola (
    CO_TIPO_ESCOLA int NOT NULL,
    DESC_TIPO_ESCOLA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_TIPO_ESCOLA)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_tipo_escola (CO_TIPO_ESCOLA, DESC_TIPO_ESCOLA)
VALUES
    (1, 'Não respondeu'),
    (2, 'Pública'),
    (3, 'Privada'),
    (4, 'Exterior');